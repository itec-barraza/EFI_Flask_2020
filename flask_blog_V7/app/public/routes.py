from flask import abort, render_template, redirect, url_for
from flask_login import current_user

from app.models import Post, Comment, Positions
from app.public.models import Hero, Race
from . import public_bp
from .forms import CommentForm

@public_bp.route("/")
def index():
    posts = Post.get_all()
    return render_template("public/index.html", posts=posts)

# Un slug es una cadena de caracteres alfanuméricos (más el carácter ‘-‘)
# sin espacios, tildes ni signos de puntuación
@public_bp.route("/p/<string:slug>/", methods=['GET', 'POST'])
def show_post(slug):
    posts = Post.get_all()
    post = Post.get_by_slug(slug)
    if not post:
        abort(404)
    form = CommentForm()
    if current_user.is_authenticated and form.validate_on_submit():
        content = form.content.data
        comment = Comment(content=content, user_id=current_user.id, user_name=current_user.name, post_id=post.id)
        comment.save()
        return redirect(url_for('public.show_post', slug=post.title_slug))
    return render_template("public/post_view.html", post=post, form=form, posts=posts)

@public_bp.route("/about")
def about():
    return render_template("public/about.html")

@public_bp.route("/join-us")
def join_us():
    return render_template("public/form_apply.html") 
    #table methods ...

@public_bp.route("/bladeandsoul")
def bns():
    return render_template("public/prod1_home.html")   

@public_bp.route("/tera")
def tera():
    return render_template("public/prod2_template.html")     
    
@public_bp.route("/bladeandsoul/classes")
def classes():
    heroes = Hero.get_all()
    return render_template("public/prod1_classes.html", heroes=heroes)

@public_bp.route("/blandeandsoul/classes/<string:name>/", methods=['GET'])
def show_class(name):
    hero = Hero.get_by_name(name)
    if not hero:
        abort(404)
    return render_template("public/prod1_class_view.html", hero=hero)

@public_bp.route("/bladeandsoul/races")
def races():
    races = Race.get_all()
    return render_template("public/prod1_races.html", races=races) 

@public_bp.route("/blandeandsoul/races/<string:name>/", methods=['GET'])
def show_race(name):
    race = Race.get_by_name(name)
    if not race:
        abort(404)
    return render_template("public/prod1_race_view.html", race=race)

@public_bp.route("/error")
def show_error():
    res = 1 / 0
    posts = Post.get_all()
    return render_template("public/index.html", posts=posts)
