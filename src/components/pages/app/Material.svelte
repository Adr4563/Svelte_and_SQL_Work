<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let Material = [];
      
      onMount(() => {
        fetchMaterial();
      });
    
      const fetchMaterial = (map) => {
        fetch(`/material/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            Material = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      const deleteMaterial = (id) => {
        alert(id);
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Lista de Materiales Electorales</h4>
      <a href="/admin/material/new" on:click|preventDefault={() => navigate(`/admin/material/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Gestión de los Materiales Electorales
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Descripcion</th>
              <th scope="col">Tipo</th>
            </tr>
          </thead>
          <tbody>
            {#each Material as mat}
              <tr>
                <td>{mat.Descripcion}</td>
                <td>{mat.Tipo}</td>
                <td>
                  <a href="/admin/material/edit/{mat.id}" on:click|preventDefault={navigate(`/admin/material/edit/${mat.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteMaterial(mat.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>