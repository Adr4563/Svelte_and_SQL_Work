<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let Coord = [];
      
      onMount(() => {
        fetchCoord();
      });
    
      const fetchCoord = (map) => {
        fetch(`/coordinador/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            Coord = data; // Asignar la respuesta a la variable levels
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
      <h4>Coordinadores de la ODPE</h4>
      <a href="/admin/coordinador/new" on:click|preventDefault={() => navigate(`/admin/coordinador/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Registro de lo coordinadores presentes de la ODPE
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">DNI</th>
              <th scope="col">Coordinador</th>
              <th scope="col">ODPE</th>
            </tr>
          </thead>
          <tbody>
            {#each Coord as co}
              <tr>
                <td>{co.DNI}</td>
                <td>{co.Nombre}</td>
                <td>{co.ODPE}</td>
                <td>
                  <a href="/admin/coordinador/edit/{co.id}" on:click|preventDefault={navigate(`/admin/coordinador/edit/${co.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteBodyPart(co.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>