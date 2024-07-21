<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let departamento = [];
      
      onMount(() => {
        fetchDepartamento();
      });
    
      const fetchDepartamento = (map) => {
        fetch(`/departamento/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            departamento = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      const deleteDepartamento = (id) => {
        alert(id);
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Departamentos del Perú</h4>
      <a href="/admin/departamento/new" on:click|preventDefault={() => navigate(`/admin/departamento/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Nombres de los Departamentos del Perú
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
            {#each departamento as dpart}
              <tr>
                <td>{dpart.Nombre}</td>
                <td>
                  <a href="/admin/departamento/edit/{dpart.id}" on:click|preventDefault={navigate(`/admin/departamento/edit/${dpart.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteDepartamento(dpart.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>