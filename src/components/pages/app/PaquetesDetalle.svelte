<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let paquetes = [];
      let nombre = '';
      let id = 'E';
      
      onMount(() => {
        //fetchmaterialLocal();
      });
    
      const fetchmaterialLocal = (map) => {
        fetch(`/paquetes/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            paquetes = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      //const deleteMaterialLocal = (id) => {
        //alert(id);
      //}
  
      const grabar = () => {
        fetch("/paquetes/grabar", {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            id: id,
            nombre: nombre
          })
        })
        .then(response => {
          if (!response.ok) {
            throw new Error('Ocurrió un problema al enviar los datos.');
          }
          return response.json(); // Parsear la respuesta como JSON si es necesario
        })
        .then(data => {
          console.log('Datos enviados correctamente:', data);
        })
        .catch(error => {
          console.error('Error al enviar los datos:', error);
        });
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Agregar Paquete</h4>
      <a href="/admin/paquetes/new" on:click|preventDefault={() => navigate(`/admin/paquetes/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
<!-- Table Element -->
<div class="card border-0">
    <div class="card-header">
        <h5 class="card-title">Tipo de paquete</h5>
        <h6 class="card-subtitle text-muted"></h6>
    </div>
    <div class="card-body">
        <label for="nombre">Nombre:</label>
        <input type="text" name="nombre" id="nombre" bind:value={nombre} class="form-control">
        <button class="btn btn-primary mt-3" on:click|preventDefault={grabar}>Grabar</button>
    </div>
</div>
</div>