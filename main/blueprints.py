#!/usr/bin/env python
# -*- coding: utf-8 -*-
from .views import view as view_blueprints
from .apis import api as api_blueprints
#from demo.blueprints import blueprints as demo_blueprints
#from access.blueprints import blueprints as access_blueprints

def register(app):
  # append sub blueprints
  modules_blueprints = []
  #modules_blueprints.append(access_blueprints)
  #modules_blueprints.append(demo_blueprints)
  # load main blueprint to app
  app.register_blueprint(view_blueprints)
  app.register_blueprint(api_blueprints)
  # load sub blueprints to app
  for blueprints in modules_blueprints:
    for blueprint in blueprints:
      app.register_blueprint(blueprint)
  # register oauth
  # app.register_blueprint(oauth_view)
  # registar error/access/:code
  # app.register_blueprint(error_view)
