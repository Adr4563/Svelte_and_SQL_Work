# !/usr/bin/env python
# -*- coding: utf-8 -*-
from flask import Flask
from .blueprints import register
from .helpers import scripts, styles
from .constants import CONSTANTS
from .blueprints import register
from .middlewares import not_found

APP = Flask(
  __name__,
  static_folder='../public',
  static_url_path='/'
)

# filters/helpers in templates
@APP.context_processor
def utility_processor():
  return dict(
    styles=styles,
    scripts=scripts,
    constants=CONSTANTS,
  )

register(APP)
APP.register_error_handler(404, not_found)
