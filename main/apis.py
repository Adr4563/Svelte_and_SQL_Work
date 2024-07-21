#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json
import traceback
from flask import Blueprint, request
from sqlalchemy.orm import sessionmaker
from sqlalchemy import text
from main.database import engine

api = Blueprint('api', __name__)

@api.route('/condicion-recepcion/list', methods=['GET'])
def condicion_recepcion_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT * FROM condicion_recepcion")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Nombre': r[1],
            'Cantidad_daños': r[2],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close() 

@api.route('/cargo/list', methods=['GET'])
def cargo_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT * FROM cargo")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Nombre': r[1],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()


@api.route('/paquetes/list', methods=['GET'])
def paquetes_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT * FROM Paquete")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Nombre': r[1],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()
    
    
@api.route('/departamento/list', methods=['GET'])
def departamento_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT * FROM Departamento")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Nombre': r[1],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()

@api.route('/personal-entrega/list', methods=['GET'])
def personal_entrega_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT PE.id, (PE.Apellido || ' ' || PE.Nombre) as 'Personal', PE.DNI, OD.Nombre as 'Centros', DEP.Nombre as 'Departamento' FROM Personal_entrega PE INNER JOIN ODPE OD ON PE.id_ODPE = OD.id INNER JOIN Departamento DEP ON OD.id_departamento = DEP.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Personal': r[1],
            'DNI': r[2],
            'Centros': r[3],
            'Departamento': r[4],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()


@api.route('/local-votacion/list', methods=['GET'])
def local_votacion_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT * FROM local_votacion")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Nombre': r[1],
            'Direccion': r[2],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()



@api.route('/material/list', methods=['GET'])
def material_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT MA.id, MA.Descripcion, PA.Nombre as 'Tipo' FROM material MA INNER JOIN Paquete PA ON MA.id_paquete = PA.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Descripcion': r[1],
            'Tipo': r[2],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()




@api.route('/provincia/list', methods=['GET'])
def provincia_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT PR.id, PR.Nombre as 'Nombre', DEP.Nombre as 'Departamento' FROM provincia PR INNER JOIN Departamento DEP ON PR.id_departamento = DEP.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Nombre': r[1],
            'Departamento': r[2],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()



@api.route('/distrito/list', methods=['GET'])
def distrito_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT DI.id, DI.Nombre, PR.Nombre as 'Provincia' FROM distrito DI INNER JOIN Provincia PR ON DI.id_provincia = PR.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Nombre': r[1],
            'Provincia': r[1],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()




@api.route('/acta-recepcion/list', methods=['GET'])
def acta_recepcion_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT A.id, A.Codigo, A.Fecha_aprobacion, A.Hora_recepcion, A.Direccion, A.Fecha_electoral, CON.Nombre as 'Estado', DIS.Nombre as 'Distrito', (COR.Apellido ||' '||COR.Nombre) as 'Coordinador', (REP.Apellido ||' '||REP.Nombre) as 'Representante' FROM Acta_recepcion A INNER JOIN condicion_recepcion CON ON A.id_condicion_recepcion = CON.id INNER JOIN Distrito DIS ON A.id_distrito = DIS.id INNER JOIN Coordinador COR ON A.id_distrito = COR.id INNER JOIN Representante_institucion REP ON A.id_distrito = REP.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Codigo': r[1],
            'Fecha_aprobacion': r[2],
            'Hora_recepcion': r[3],
            'Direccion': r[4],
            'Fecha_electoral': r[5],
            'Estado': r[6],
            'Distrito': r[7],
            'Coordinador': r[8],
            'Representante': r[9],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()



@api.route('/cargo-entrega/list', methods=['GET'])
def cargo_entrega_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT CA.id, CA.Codigo, CA.Centro, CA.Fecha, (PER.Apellido || ' ' || PER.Nombre) as 'Personal', LV.Nombre as 'Local', OD.Nombre 'ODPE', (COD.Apellido || ' ' || COD.Nombre) as 'Coordinador' FROM Cargo_entrega as CA INNER JOIN Personal_entrega PER ON CA.id_personal_entrega = PER.id INNER JOIN local_votacion LV ON CA.id_local_votacion = LV.id INNER JOIN ODPE OD ON CA.id_ODPE = OD.id INNER JOIN Coordinador COD ON CA.id_coordinador = COD.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Codigo': r[1],
            'Centro': r[2],
            'Fecha': r[3],
            'Personal': r[4],
            'Local': r[5],
            'ODPE': r[6],
            'Coordinador': r[7],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()


@api.route('/representante-institucion/list', methods=['GET'])
def representante_institucion_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT RE.id, (RE.Apellido || ' ' || RE.Nombre) as 'Representante', RE.DNI, CA.Nombre as 'Cargo', LV.Nombre as 'Local' FROM Representante_institucion RE INNER JOIN cargo CA ON RE.id_cargo = CA.id INNER JOIN local_votacion LV ON RE.id_local_votacion = LV.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Representante': r[1],
            'DNI': r[2],
            'Cargo': r[3],
            'Local': r[4],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()


@api.route('/coordinador/list', methods=['GET'])
def coordinador_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT CO.id, CO.DNI, (CO.Apellido || ' ' || CO.Nombre) as 'Nombre', OD.Nombre FROM Coordinador CO INNER JOIN ODPE OD ON CO.id_ODPE = OD.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            
            
            'id': r[0],
            'DNI': r[1],
            'Nombre': r[2],
            'ODPE': r[3],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()


@api.route('/material-cargo-entrega/list', methods=['GET'])
def material_cargo_entrega_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT MC.id, MC.Cantidad, CAR.Codigo, M.Descripcion FROM Material_cargo_entrega MC INNER JOIN Cargo_entrega CAR ON MC.id_cargo_entrega = CAR.id INNER JOIN Material M ON MC.id_material = M.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Cantidad': r[1],
            'Codigo': r[2],
            'Descripcion': r[3],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()


@api.route('/material-local/list', methods=['GET'])
def material_local_list():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    with engine.connect() as connection:
      query = text("SELECT ML.id, ML.Numero_mesa, (LV.Nombre || ' en ' || LV.Direccion) as 'Direccion', M.Descripcion  FROM Material_Local ML INNER JOIN local_votacion LV ON ML.id_local_votacion = LV.id INNER JOIN Material M ON ML.id_material = M.id")
      result = connection.execute(query)
      # Obtener el primer resultado
      rows = result.fetchall()
      if rows:
        resp = []
        print(rows)
        for r in rows:
          tmp = {
            'id': r[0],
            'Numero_mesa': r[1],
            'Direccion': r[2],
            'Descripcion': r[3],
          }
          resp.append(tmp)
        return json.dumps(resp)
      else:
          return json.dumps({"error": "No se encontraron resultados"}), 404
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()

# INSERT/DELETE
@api.route('/paquetes/grabar', methods=['POST'])
def paquetes_grabar():
  Session = sessionmaker(bind=engine)
  session = Session()
  try:
    datos = request.get_json()
    print(datos)
    with engine.connect() as connection:
      query = text("INSERT INTO Paquete (nombre) VALUES (:nombre)")
      result = connection.execute(query, nombre=datos['nombre'])
      return json.dumps({"id": result.lastrowid}), 200
  except Exception as e:
    traceback.print_exc()
    error_message = "Error desconocido: {}".format(str(e))
    return json.dumps({"error": error_message}), 500
  finally:
    session.close()