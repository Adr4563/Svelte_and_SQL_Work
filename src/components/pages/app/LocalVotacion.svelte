<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let localVotacion = [];
      
      onMount(() => {
        fetchlocalVotacion();
      });
    
      const fetchlocalVotacion = (map) => {
        fetch(`/local-votacion/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            localVotacion = data; // Asignar la respuesta a la variable levels
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
      <h4>Local de Votacion</h4>
      <a href="/admin/local-votacion/new" on:click|preventDefault={() => navigate(`/admin/local-votacion/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Locales de Votación
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Nombre</th>
              <th scope="col">Direccion</th>
            </tr>
          </thead>
          <tbody>
            {#each localVotacion as lvot}
              <tr>
                <td>{lvot.Nombre}</td>
                <td>{lvot.Direccion}</td>
                <td>
                  <a href="/admin/local-votacion/edit/{lvot.id}" on:click|preventDefault={navigate(`/admin/local-votacion/edit/${lvot.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteBodyPart(lvot.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>