# !/usr/bin/env python
# -*- coding: utf-8 -*-
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

class Serilizable:
  def to_dict(self):
    return {key: value for key, value in self.__dict__.items() if not key.startswith('_') and key != '_sa_instance_state'}

Base = declarative_base()
engine = create_engine('sqlite:///db/app.db')
session_db = sessionmaker()
session_db.configure(bind=engine)