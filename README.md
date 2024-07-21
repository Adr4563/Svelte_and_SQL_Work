<h1 align="center">Plantilla Svelte - Flask & Proyecto ONPE: Gestión y Distribución de Materiales</h1>

### **Contents**
  - [Introducción 📖](#introducción-)
  - [Instalación y Configuración 🛠️](#instalación-y-configuración-)
  - [Migraciones DBMATE 🔄](#migraciones-dbmate-)
  - [Tablas de Contenido 🗂️](#tablas-de-contenido-)

# Introducción 📖

Este proyecto implementa un sistema para la gestión y distribución de materiales de la ONPE utilizando una plantilla Svelte para el front-end y Flask para el back-end.
![image](https://github.com/user-attachments/assets/a1f311e5-3179-4343-913f-38efa50e32bf)

# Instalación y Configuración 🛠️

1. **Descargar y descomprimir** el archivo del proyecto.
2. **Abrir el CMD** en la carpeta raíz del proyecto.
3. **Instalar las dependencias de Svelte**:
    ```
    npm install
    ```
4. **Ejecutar el front-end**:
    ```
    npm run svelte
    ```
5. **Abrir Anaconda CMD** (otra terminal) y navegar hasta la carpeta raíz del proyecto.
6. **Instalar las dependencias de Flask**:
    ```
    pip install -r requirements.txt
    ```
7. **Ejecutar el back-end**:
    ```
    python app.py
    ```

# Migraciones DBMATE 🔄

**Crear migración**:
```
npm run dbmate:new <nombre-migración>
```

**Ejecutar migraciones:**

```
npm run dbmate:up
```

**Deshacer migraciones:**
```
npm run dbmate:rollback
```

# Tablas de Contenido 🗂️

Para ingresar y visualizar las tablas de contenido, que incluye editar,agregar y eliminar, dirígete al siguiente enlace:

**[http://127.0.0.1:5000/admin](http://127.0.0.1:5000/admin)**

```
http://127.0.0.1:5000/admin
```

![image](https://github.com/user-attachments/assets/cc481d53-1f9e-462f-9fd4-c060b739f23d)
