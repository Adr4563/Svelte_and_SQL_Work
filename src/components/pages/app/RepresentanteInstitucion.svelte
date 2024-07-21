<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let repreInst = [];
      
      onMount(() => {
        fetchrepreInst();
      });
    
      const fetchrepreInst = (map) => {
        fetch(`/representante-institucion/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            repreInst = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      const deleteRepreInst = (id) => {
        alert(id);
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Representante de la Institucion en el Transcurso del Proceso Electoral</h4>
      <a href="/admin/rrepresentante-institucion/new" on:click|preventDefault={() => navigate(`/admin/representante-institucion/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Registro de los Representantes de cada Institucion 
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Representante</th>
              <th scope="col">DNI</th>
              <th scope="col">Cargo</th>
              <th scope="col">Local</th>
            </tr>
          </thead>
          <tbody>
            {#each repreInst as rep}
              <tr>
                <td>{rep.Representante}</td>
                <td>{rep.DNI}</td>
                <td>{rep.Cargo}</td>
                <td>{rep.Local}</td>
                <td>
                  <a href="/admin/representante-institucion/edit/{rep.id}" on:click|preventDefault={navigate(`/admin/representante-institucion/edit/${rep.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteRepreInst(rep.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>