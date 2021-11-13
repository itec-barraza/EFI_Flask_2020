# HEREDAMOS FLASKFORM
from flask_wtf import FlaskForm
# HEREDAMOS 4 COMPONENTES, CAJA DE TEXTO, BOTON SUBMIT, CAMPO PARA CLAVE y AREA DE TEXTO
from wtforms import StringField, SubmitField, TextAreaField, BooleanField
# HEREDAMOS VALIDADORES, DATO REQUERIDO, EMAIL Y LARGO DE UN CAMPO
from wtforms.validators import DataRequired, Length


class PostForm(FlaskForm):
    title = StringField('Title', validators=[DataRequired(), Length(max=128)])
    content = TextAreaField('Content')
    submit = SubmitField('Submit')

class UserAdminForm(FlaskForm):
    is_admin = BooleanField('Admin')
    submit = SubmitField('Save Changes')