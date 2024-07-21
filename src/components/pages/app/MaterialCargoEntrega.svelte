<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let materialCargoEntr = [];
      
      onMount(() => {
        fetchmaterialCargoEntr();
      });
    
      const fetchmaterialCargoEntr = (map) => {
        fetch(`/material-cargo-entrega/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            materialCargoEntr = data; // Asignar la respuesta a la variable levels
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
      <h4>Material y Cargo de Entrega al Personal Autorizado</h4>
      <a href="/admin/material-cargo-entrega/new" on:click|preventDefault={() => navigate(`/admin/material-cargo-entrega/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Registro de los materiales del cargo de entrega
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Cantidad</th>
              <th scope="col">Codigo</th>
              <th scope="col">Descripcion</th>
            </tr>
          </thead>
          <tbody>
            {#each materialCargoEntr as cargo}
              <tr>
                <td>{cargo.Cantidad}</td>
                <td>{cargo.Codigo}</td>
                <td>{cargo.Descripcion}</td>
                <td>
                  <a href="/admin/material-cargo-entrega/edit/{cargo.id}" on:click|preventDefault={navigate(`/admin/material-cargo-entrega/edit/${cargo.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteBodyPart(cargo.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>