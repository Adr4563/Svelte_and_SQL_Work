<script>

  import { onMount } from 'svelte';
    import { navigate } from 'svelte-routing';
    let cargo_list = [];
    
    onMount(() => {
      fetchCargo();
    });
  
    const fetchCargo = (map) => {
      fetch(`/cargo/list`)
        .then(response => {
          if (!response.ok) {
            throw new Error('Error en la solicitud: ' + response.status);
          }
          return response.json(); // Convertir la respuesta a JSON
        })
        .then(data => {
          cargo_list = data; // Asignar la respuesta a la variable levels
        })
        .catch(error => {
          console.error('Error en la solicitud:', error);
        });
    }
  
    const deleteCargo = (id) => {
      alert(id);
    }
  </script>
  
  <style></style>
  
  <div class="mb-3">
    <h4>Cargos Empresariales de la Oficina Nacional de Procesos Electorales</h4>
    <a href="/admin/cargo/new" on:click|preventDefault={() => navigate(`/admin/cargo/new`)} class="btn btn-success">Agregar Registro</a>
  </div>
  <!-- Table Element -->
  <div class="card border-0">
    <div class="card-header">
      <h5 class="card-title">
          Tipos de Cargos presentes en la Oficina Nacional de Procesos Electorales
      </h5>
      <h6 class="card-subtitle text-muted">
      </h6>
    </div>
    <div class="card-body">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Tipo de Cargo</th>
          </tr>
        </thead>
        <tbody>
          {#each cargo_list as carg}
            <tr>
              <td>{carg.Nombre}</td>
              <td>
                <a href="/admin/cargo/edit/{carg.id}" on:click|preventDefault={navigate(`/admin/cargo/edit/${carg.id}`)} class="btn btn-danger">Editar</a>
                <button on:click|preventDefault={deleteCargo(carg.id)} class="btn btn-secondary">Eliminar</button>
              </td>
            </tr>
          {/each}
        </tbody>
      </table>
    </div>
  </div>