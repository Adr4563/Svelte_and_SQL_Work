<script>
  import { onMount } from 'svelte';
  import { navigate } from 'svelte-routing';
  
  const emails = [
    'ejemplo1@example.com',
    'usuario2@gmail.com',
    'info3@empresa.com',
    'nombre.apellido4@hotmail.com',
    'cliente5@proveedor.net',
    'contacto6@organizacion.org',
    'mi_correo7@yahoo.com',
    'usuario8@servicio.com',
    'soporte9@plataforma.io',
    'ventas10@negocio.es',
  ]
  let message = '';
  let email = '';
  let messageClass = '';
  const resetPassword = (event) => {
    event.preventDefault();
    if(validarCorreo(email)){
      if(emails.includes(email)){
        message = 'Se ha enviado un correo para que cambie su contraseña.'
        messageClass = 'text-success'
      }else{
        message = 'Correo no existe en la base de datos.'
        messageClass = 'text-danger'
      }
    }else{
      message = 'Formato de correo no válido.'
      messageClass = 'text-danger'
    }
  }

  const validarCorreo = (correo) => {
    const expresionRegular = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return expresionRegular.test(correo);
  };

  onMount(() => {

  });
</script>
<style></style>

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <div class="card-header">
          <h3 class="text-center">Change Account Email</h3>
        </div>
        <div class="card-body">
          <form>
            <div class="mb-3">
              <label for="email" class="form-label">New Email Address</label>
              <input type="email" class="form-control" id="email" required bind:value={email}>
            </div>
            <button type="submit" on:click={resetPassword} class="btn btn-primary w-100">Update Email</button>
          </form>
          <div class="text-center mt-3 {messageClass}">
            {message}
          </div>
          <div class="text-center mt-3">
            <a class="navbar-brand" href="/login" on:click|preventDefault={() => {navigate('/login')}}>Ingresar</a>
            <span class="mx-2">|</span>
            <a class="navbar-brand" href="/sign-up" on:click|preventDefault={() => {navigate('/sign-up')}}>Crear Cuenta</a>
          </div>
        </div>
        <div class="card-footer text-center">
          <small>&copy; 2024 Your Brand</small>
        </div>
      </div>
    </div>
  </div>
</div>