<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let personalEntrega = [];
      
      onMount(() => {
        fetchPersonalEntrega();
      });
    
      const fetchPersonalEntrega = (map) => {
        fetch(`/personal-entrega/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            personalEntrega = data; // Asignar la respuesta a la variable levels
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
      <h4>Personal de Entrega</h4>
      <a href="/admin/personal-entrega/new" on:click|preventDefault={() => navigate(`/admin/personal-entrega/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
          Personal de Entrega Según el Centro de ODPE por Departamento
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Personal</th>
              <th scope="col">DNI</th>
              <th scope="col">Centros</th>
              <th scope="col">Departamento</th>
            </tr>
          </thead>
          <tbody>
            {#each personalEntrega as perEnt}
              <tr>
                <td>{perEnt.Personal}</td>
                <td>{perEnt.DNI}</td>
                <td>{perEnt.Centros}</td>
                <td>{perEnt.Departamento}</td>
                <td>
                  <a href="/admin/personal-entrega/edit/{perEnt.id}" on:click|preventDefault={navigate(`/admin/personal-entrega/edit/${perEnt.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteBodyPart(perEnt.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>