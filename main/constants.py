# !/usr/bin/env python
# -*- coding: utf-8 -*-
import os
from dotenv import load_dotenv

load_dotenv()
ENV = os.getenv('ENV')

if ENV == 'local':
  CONSTANTS = {
    'base_url': 'http://localhost:5000/',
    'static_url': 'http://localhost:5000/',
  }
elif ENV == 'ulima':
  CONSTANTS = {
    'base_url': 'http://ulima.edu.pe/',
    'static_url': 'http://localhost:5000/',
  }
else:
  CONSTANTS = {
    'base_url': 'http://ulima.edu.pex/',
    'static_url': 'http://localhost:5000/',
  }