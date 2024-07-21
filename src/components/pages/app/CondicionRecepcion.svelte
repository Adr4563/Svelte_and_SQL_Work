<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let condicionRecepcion = [];
      
      onMount(() => {
        fetchCondicionRecepcion();
      });
    
      const fetchCondicionRecepcion = (map) => {
        fetch(`/condicion-recepcion/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            condicionRecepcion = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      const deleteBodyPart = (id) => {
        alert(id);
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Gestion de Condición de Recepción</h4>
      <a href="/admin/condicion-recepcion/new" on:click|preventDefault={() => navigate(`/admin/condicion-recepcion/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Registros de la Condición de Recepción
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Nombre</th>
              <th scope="col">Cantidad_daños</th>
            </tr>
          </thead>
          <tbody>
            {#each condicionRecepcion as crecep}
              <tr>
                <td>{crecep.Nombre}</td>
                <td>{crecep.Cantidad_daños}</td>
                <td>
                  <a href="/admin/condicion-recepcion/edit/{crecep.id}" on:click|preventDefault={navigate(`/admin/condicion-recepcion/edit/${crecep.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteBodyPart(crecep.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>