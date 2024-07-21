# !/usr/bin/env python
# -*- coding: utf-8 -*-

from main.application import APP

if __name__ == '__main__':
  APP.run(
    debug=True, 
    host='0.0.0.0', 
    port=5000
  )
