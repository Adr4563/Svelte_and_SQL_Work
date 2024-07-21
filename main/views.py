#!/usr/bin/env python
# -*- coding: utf-8 -*-
from flask import Blueprint, render_template

view = Blueprint('demo-app-index', __name__)

@view.route('/reset-password', methods=['GET'])
@view.route('/sign-up', methods=['GET'])
@view.route('/login', methods=['GET'])
def access():
  locals = {}
  locals['title'] = 'Bienvenido'
  locals['csss'] = ['dist/access']
  locals['jss'] = ['dist/access']
  return render_template('access.html', locals = locals)

@view.route('/contact', methods=['GET'])
@view.route('/about', methods=['GET'])
@view.route('/services', methods=['GET'])
@view.route('/', methods=['GET'])
def home():
  locals = {}
  locals['title'] = 'Bienvenido'
  locals['csss'] = ['dist/web']
  locals['jss'] = ['dist/web']
  return render_template('web.html', locals = locals)

@view.route('/admin/material/new', methods=['GET'])
@view.route('/admin/paquetes/new', methods=['GET'])
@view.route('/admin/material-local', methods=['GET'])
@view.route('/admin/material-cargo-entrega', methods=['GET'])
@view.route('/admin/coordinador', methods=['GET'])
@view.route('/admin/representante-institucion', methods=['GET'])
@view.route('/admin/cargo-entrega', methods=['GET'])
@view.route('/admin/acta-recepcion', methods=['GET'])
@view.route('/admin/distrito', methods=['GET'])
@view.route('/admin/provincia', methods=['GET'])
@view.route('/admin/material', methods=['GET'])
@view.route('/admin/local-votacion', methods=['GET'])
@view.route('/admin/personal_entrega', methods=['GET'])
@view.route('/admin/departamento', methods=['GET'])
@view.route('/admin/paquetes', methods=['GET'])
@view.route('/admin/cargo', methods=['GET'])
@view.route('/admin/condicion-recepcion', methods=['GET'])
@view.route('/admin', methods=['GET'])
def app():
  locals = {}
  locals['title'] = 'Panel de Administración'
  locals['csss'] = ['dist/app']
  locals['jss'] = ['dist/app']
  return render_template('app.html', locals = locals)

@view.route('/error/access/<code>', methods=['GET'])
def error_access(code):
  # lang = session_language(session)
  # locals_dic = { }
  # return render_template('demo/index.html', locals=locals_dic)
  return 'Recurso no encontrado', code
