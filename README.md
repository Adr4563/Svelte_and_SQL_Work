# Plantilla Svelte - Flask

1. Descargar y descomprimir
2. Abrir el CMD en la carpeta raiz.
3. Instalar las dependencias de Svelte:
    > npm install
4. Ejecutar el front-end:
    > npm run svelte
5. Abrir (otra terminal) Anaconda CMD y llegar a la carpeta raiz.
6. Instalar las dependencias de Flask:
    > pip install -r requirements.txt
7. Ejecutar el back-end:
    > python app.py



Migraciones DBMATE

Crear migración:

  > npm run dbmate:new <nombre-migración>

Ejecutar

  > npm run dbmate:up

Deshacer

  > npm run dbmate:rollback