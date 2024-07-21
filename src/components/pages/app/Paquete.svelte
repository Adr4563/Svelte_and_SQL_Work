<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let paquete = [];
      
      onMount(() => {
        fetchPaquete();
      });
    
      const fetchPaquete = (map) => {
        fetch(`/paquetes/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            paquete = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      const deletePaquete = (id) => {
        alert(id);
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Lista de Paquetes Electorales</h4>
      <a href="/admin/paquetes/new" on:click|preventDefault={() => navigate(`/admin/paquetes/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Tipos de paquetes
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Nombre</th>
            </tr>
          </thead>
          <tbody>
            {#each paquete as paq}
              <tr>
                <td>{paq.Nombre}</td>
                <td>
                  <a href="/admin/paquetes/edit/{paq.id}" on:click|preventDefault={navigate(`/admin/paquetes/edit/${paq.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deletePaquete(paq.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>