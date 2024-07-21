<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let materialLocal = [];
      
      onMount(() => {
        fetchmaterialLocal();
      });
    
      const fetchmaterialLocal = (map) => {
        fetch(`/material-local/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            materialLocal = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      const deleteMaterialLocal = (id) => {
        alert(id);
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Material del Local de Votación en los Procesos Electorales</h4>
      <a href="/admin/material-local/new" on:click|preventDefault={() => navigate(`/admin/material-local/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Registro de los materiales en los locales de votación
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Numero_mesa</th>
              <th scope="col">Direccion</th>
              <th scope="col">Descripcion</th>
            </tr>
          </thead>
          <tbody>
            {#each materialLocal as matL}
              <tr>
                <td>{matL.Numero_mesa}</td>
                <td>{matL.Direccion}</td>
                <td>{matL.Descripcion}</td>
                <td>
                  <a href="/admin/material-local/edit/{matL.id}" on:click|preventDefault={navigate(`/admin/material-local/edit/${matL.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteMaterialLocal(matL.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>