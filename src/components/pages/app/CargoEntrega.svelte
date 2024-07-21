<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let cargoEntrega = [];
      
      onMount(() => {
        fetchcargoEntrega();
      });
    
      const fetchcargoEntrega = (map) => {
        fetch(`/cargo-entrega/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            cargoEntrega = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      const deleteCargoEntrega = (id) => {
        alert(id);
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Cargo de Entrega al Personal Autorizado</h4>
      <a href="/admin/cargo-entrega/new" on:click|preventDefault={() => navigate(`/admin/cargo-entrega/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Registro de Actividad de la Distribución de los Paquetes
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Código</th>
              <th scope="col">Centro</th>
              <th scope="col">Fecha</th>
              <th scope="col">Personal</th>
              <th scope="col">Local</th>
              <th scope="col">ODPE</th>
              <th scope="col">Coordinador</th>
            </tr>
          </thead>
          <tbody>
            {#each cargoEntrega as centr}
              <tr>
                <td>{centr.Codigo}</td>
                <td>{centr.Centro}</td>
                <td>{centr.Fecha}</td>
                <td>{centr.Personal}</td>
                <td>{centr.Local}</td>
                <td>{centr.ODPE}</td>
                <td>{centr.Coordinador}</td>
                <td>
                  <a href="/admin/cargo-entrega/edit/{centr.id}" on:click|preventDefault={navigate(`/admin/cargo-entrega/edit/${centr.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteCargoEntrega(centr.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>