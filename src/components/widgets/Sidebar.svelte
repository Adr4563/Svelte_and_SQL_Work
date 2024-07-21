<script>
  import { navigate } from 'svelte-routing';
</script>

<style></style>

<aside id="sidebar" class="js-sidebar">
  <!-- Content For Sidebar -->
  <div class="h-100">
    <div class="sidebar-logo">
      <a href="#">Gimnasio ULima</a>
    </div>
    <ul class="sidebar-nav">
      <li class="sidebar-header">
        Admin Elements
      </li>
      <li class="sidebar-item">
        <a class="sidebar-link" href="/" on:click|preventDefault={() => {navigate('/')}}>
          Home
        </a>
      </li>
      <li class="sidebar-item">
        <a href="#" class="sidebar-link collapsed" data-bs-target="#pages" data-bs-toggle="collapse"
            aria-expanded="false"><i class="fa-solid fa-file-lines pe-2"></i>
            Datos Maestros
        </a>
        <ul id="pages" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
          
   <!--    <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/condicion-recepcion" on:click|preventDefault={() => {navigate('/admin/condicion-recepcion')}}>
            Gestión de la Condición de la Recepción
          </a>
        </li> -->
        
       <!-- <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/cargo" on:click|preventDefault={() => {navigate('/admin/cargo')}}>
            Cargos Empresariales de las Oficina Nacional de Procesos Electorales
          </a>
        </li> -->
      
        <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/paquetes" on:click|preventDefault={() => {navigate('/admin/paquetes')}}>
            Paquetes
          </a>
        </li>

         <!-- <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/departamento" on:click|preventDefault={() => {navigate('/admin/departamento')}}>
            Alcance de la Oficina Nacional de Procesos Electorales en los Departamentos del Perú
          </a>
        </li> -->
        

        <!-- <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/personal-entrega" on:click|preventDefault={() => {navigate('/admin/personal-entrega')}}>
            Personal de Entrega 
          </a>
        </li> -->

        <!--  <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/local-votacion" on:click|preventDefault={() => {navigate('/admin/local-votacion')}}>
            Local de Votación en los Procesos Electorales de Votación
          </a>
        </li> -->

        <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/material" on:click|preventDefault={() => {navigate('/admin/material')}}>
            Materiales
          </a>
        </li>

        <!-- <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/distrito" on:click|preventDefault={() => {navigate('/admin/distrito')}}>
            Distritos a Realizar los Procesos Electorales
          </a>
        </li>-->


        <!-- <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/acta-recepcion" on:click|preventDefault={() => {navigate('/admin/acta-recepcion')}}>
            Actas de Recepción de la Oficina Nacional de Procesos Electorales
          </a>
        </li> -->


        <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/cargo-entrega" on:click|preventDefault={() => {navigate('/admin/cargo-entrega')}}>
            Cargo de Entrega 
          </a>
        </li>



        <!-- <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/representante-institucion" on:click|preventDefault={() => {navigate('/admin/representante-institucion')}}>
            Representante de la Insitución del Local de Votación
          </a>
        </li> -->


        <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/coordinador" on:click|preventDefault={() => {navigate('/admin/coordinador')}}>
            Coordinadores
          </a>
        </li>


        <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/material-cargo-entrega" on:click|preventDefault={() => {navigate('/admin/material-cargo-entrega')}}>
            Material y Cargo de Entrega
          </a>
        </li>


        <!-- <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/material-local" on:click|preventDefault={() => {navigate('/admin/material-local')}}>
            Material del Local de Votación en los Procesos Electorales
          </a>
        </li> -->


        <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/paquetes/new" on:click|preventDefault={() => {navigate('/admin/paquetes/new')}}>
            Agregar Paquetes
          </a>
        </li>

        <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/material/new" on:click|preventDefault={() => {navigate('/admin/material/new')}}>
            Agregar Material
          </a>
        </li>
        

        <li class="sidebar-item">
          <a class="sidebar-link" href="/admin/provincia" on:click|preventDefault={() => {navigate('/admin/provincia')}}> 
          </a>
        </li>



        <li class="sidebar-item">
          <a href="#" class="sidebar-link">Page 2</a>
        </li>
      </ul>
    </li>
    <li class="sidebar-item">
        <a href="#" class="sidebar-link collapsed" data-bs-target="#posts" data-bs-toggle="collapse"
            aria-expanded="false"><i class="fa-solid fa-sliders pe-2"></i>
            Posts
        </a>
        <ul id="posts" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
          
          <li class="sidebar-item">
            <a class="sidebar-link" href="/admin/material-local/new" on:click|preventDefault={() => {navigate('/admin/material-local/new')}}>
              Material LOCAL DETALLE
            </a>
          </li>
  
          <li class="sidebar-item">
            <a href="#" class="sidebar-link">Post 2</a>
          </li>
          <li class="sidebar-item">
            <a href="#" class="sidebar-link">Post 3</a>
          </li>
        </ul>
      </li>
      <li class="sidebar-item">
        <a href="#" class="sidebar-link collapsed" data-bs-target="#auth" data-bs-toggle="collapse"
            aria-expanded="false"><i class="fa-regular fa-user pe-2"></i>
            Auth
        </a>
        <ul id="auth" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
          <li class="sidebar-item">
            <a href="#" class="sidebar-link">Login</a>
          </li>
          <li class="sidebar-item">
            <a href="#" class="sidebar-link">Register</a>
          </li>
          <li class="sidebar-item">
            <a href="#" class="sidebar-link">Forgot Password</a>
          </li>
        </ul>
      </li>
      <li class="sidebar-header">
        Multi Level Menu
      </li>
      <li class="sidebar-item">
        <a href="#" class="sidebar-link collapsed" data-bs-target="#multi" data-bs-toggle="collapse"
            aria-expanded="false"><i class="fa-solid fa-share-nodes pe-2"></i>
            Multi Dropdown
        </a>
        <ul id="multi" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
          <li class="sidebar-item">
            <a href="#" class="sidebar-link collapsed" data-bs-target="#level-1"
                data-bs-toggle="collapse" aria-expanded="false">Level 1</a>
            <ul id="level-1" class="sidebar-dropdown list-unstyled collapse">
              <li class="sidebar-item">
                  <a href="#" class="sidebar-link">Level 1.1</a>
              </li>
              <li class="sidebar-item">
                  <a href="#" class="sidebar-link">Level 1.2</a>
              </li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</aside>