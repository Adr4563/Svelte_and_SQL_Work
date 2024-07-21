#!/usr/bin/env python
# -*- coding: utf-8 -*-
from .constants import CONSTANTS

def styles(csss):
  resp = ''
  if len(csss) > 0:
    for css in csss:
      temp = ('<link href="'
              + CONSTANTS['static_url']
              + css
              + '.css" rel="stylesheet"/>')
      resp = resp + temp
  return resp

def scripts(jss):
  resp = ''
  if len(jss) > 0:
    for js in jss:
      temp = ('<script src="'
              + CONSTANTS['static_url']
              + js
              + '.js" type="text/javascript"></script>')
      resp = resp + temp
  return resp
