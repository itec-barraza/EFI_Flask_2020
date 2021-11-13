import datetime
from flask import url_for
from slugify import slugify
from sqlalchemy.exc import IntegrityError

from app import db


class Hero(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text, nullable=False)
    content = db.Column(db.Text)
    img_url = db.Column(db.Text)
    logo_url = db.Column(db.Text, nullable=False)
    video_url = db.Column(db.Text)


    @staticmethod
    def get_by_name(name):
        return Hero.query.filter_by(name=name).first()

    @staticmethod
    def get_by_id(id):
        return Hero.query.get(id)

    @staticmethod
    def get_all():
        return Hero.query.all()


class Race(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text, nullable=False)
    content = db.Column(db.Text)
    img_url = db.Column(db.Text)
    logo_url = db.Column(db.Text, nullable=False)


    @staticmethod
    def get_by_name(name):
        return Race.query.filter_by(name=name).first()

    @staticmethod
    def get_by_id(id):
        return Race.query.get(id)

    @staticmethod
    def get_all():
        return Race.query.all()
