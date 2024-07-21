<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let Distrito = [];
      
      onMount(() => {
        fetchDistrito();
      });
    
      const fetchDistrito = (map) => {
        fetch(`/distrito/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            Distrito = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      const deleteDistrito = (id) => {
        alert(id);
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Distritos Según su Provicia de Origen</h4>
      <a href="/admin/distrito/new" on:click|preventDefault={() => navigate(`/admin/distrito/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Distritos y Provincias
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Nombre</th>
              <th scope="col">Provincia</th>
            </tr>
          </thead>
          <tbody>
            {#each Distrito as dis}
              <tr>
                <td>{dis.Nombre}</td>
                <td>{dis.Provincia}</td>
                <td>
                  <a href="/admin/distrito/edit/{dis.id}" on:click|preventDefault={navigate(`/admin/distrito/edit/${dis.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteDistrito(dis.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>