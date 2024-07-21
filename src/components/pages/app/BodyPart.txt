<script>

  import { onMount } from 'svelte';
    import { navigate } from 'svelte-routing';
    let bodyParts = [];
    
    onMount(() => {
      fetchBodyParts();
    });
  
    const fetchBodyParts = (map) => {
      fetch(`/body-part/list`)
        .then(response => {
          if (!response.ok) {
            throw new Error('Error en la solicitud: ' + response.status);
          }
          return response.json(); // Convertir la respuesta a JSON
        })
        .then(data => {
          bodyParts = data; // Asignar la respuesta a la variable levels
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
    <h4>Gestión de Partes del Cuerpo</h4>
    <a href="/admin/body-part/new" on:click|preventDefault={() => navigate(`/admin/body-part/new`)} class="btn btn-success">Agregar Registro</a>
  </div>
  <!-- Table Element -->
  <div class="card border-0">
    <div class="card-header">
      <h5 class="card-title">
          Partes del Cuerpo de los Ejercicios
      </h5>
      <h6 class="card-subtitle text-muted">
      </h6>
    </div>
    <div class="card-body">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Nombre</th>
            <th scope="col">Acciones</th>
          </tr>
        </thead>
        <tbody>
          {#each bodyParts as bpart}
            <tr>
              <td>{bpart.name}</td>
              <td>
                <a href="/admin/body-part/edit/{bpart.id}" on:click|preventDefault={navigate(`/admin/body-part/edit/${bpart.id}`)} class="btn btn-danger">Editar</a>
                <button on:click|preventDefault={deleteBodyPart(bpart.id)} class="btn btn-secondary">Eliminar</button>
              </td>
            </tr>
          {/each}
        </tbody>
      </table>
    </div>
  </div>