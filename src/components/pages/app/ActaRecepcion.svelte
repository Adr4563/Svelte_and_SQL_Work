<script>

    import { onMount } from 'svelte';
      import { navigate } from 'svelte-routing';
      let actaRecepcion = [];
      
      onMount(() => {
        fetchactaRecepcion();
      });
    
      const fetchactaRecepcion = (map) => {
        fetch(`/acta-recepcion/list`)
          .then(response => {
            if (!response.ok) {
              throw new Error('Error en la solicitud: ' + response.status);
            }
            return response.json(); // Convertir la respuesta a JSON
          })
          .then(data => {
            actaRecepcion = data; // Asignar la respuesta a la variable levels
          })
          .catch(error => {
            console.error('Error en la solicitud:', error);
          });
      }
    
      const deleteActaRecepcion = (id) => {
        alert(id);
      }
    </script>
    
    <style></style>
    
    <div class="mb-3">
      <h4>Actas de Recepción de la ONPE</h4>
      <a href="/admin/acta-recepcion/new" on:click|preventDefault={() => navigate(`/admin/acta-recepcion/new`)} class="btn btn-success">Agregar Registro</a>
    </div>
    <!-- Table Element -->
    <div class="card border-0">
      <div class="card-header">
        <h5 class="card-title">
            Actas de Recepeción Realizados Durantes en el Proceso Electoral
        </h5>
        <h6 class="card-subtitle text-muted">
        </h6>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Código</th>
              <th scope="col">Fecha de aprobación</th>
              <th scope="col">Hora de recepción</th>
              <th scope="col">Dirección</th>
              <th scope="col">Fecha electoral</th>
              <th scope="col">Estado</th>
              <th scope="col">Distrito</th>
              <th scope="col">Coordinador</th>
              <th scope="col">Representante de la Institución</th>
            </tr>
          </thead>
          <tbody>
            {#each actaRecepcion as actrep}
              <tr>
                <td>{actrep.Codigo}</td>
                <td>{actrep.Fecha_aprobacion}</td>
                <td>{actrep.Hora_recepcion}</td>
                <td>{actrep.Direccion}</td>
                <td>{actrep.Fecha_electoral}</td>
                <td>{actrep.Estado}</td>
                <td>{actrep.Distrito}</td>
                <td>{actrep.Coordinador}</td>
                <td>{actrep.Representante}</td>
                <td>
                  <a href="/admin/acta-recepcion/edit/{actrep.id}" on:click|preventDefault={navigate(`/admin/acta-recepcion/edit/${actrep.id}`)} class="btn btn-danger">Editar</a>
                  <button on:click|preventDefault={deleteActaRecepcion(actrep.id)} class="btn btn-secondary">Eliminar</button>
                </td>
              </tr>
            {/each}
          </tbody>
        </table>
      </div>
    </div>