<script lang="ts">
import { onMount } from 'svelte';
import { Router, Route } from 'svelte-routing';
import Sidebar from '../widgets/Sidebar.svelte';
import Navbar from '../widgets/Navbar.svelte';
import ThemeToggle from '../widgets/ThemeToggle.svelte';
import Footer from '../widgets/Footer.svelte';
import Home from '../pages/app/Home.svelte';
import CondicionRecepcion from '../pages/app/CondicionRecepcion.svelte';
import Cargo from '../pages/app/Cargo.svelte';
import Paquete from '../pages/app/Paquete.svelte';
import Departamento from '../pages/app/Departamento.svelte';
import PersonalEntrega from '../pages/app/PersonalEntrega.svelte';
import LocalVotacion from '../pages/app/LocalVotacion.svelte';
import Material from '../pages/app/Material.svelte';
import Provincias from '../pages/app/Provincias.svelte';
import Distrito from '../pages/app/Distrito.svelte';
import ActaRecepcion from '../pages/app/ActaRecepcion.svelte';
import CargoEntrega from '../pages/app/CargoEntrega.svelte';
import RepresentanteInstitucion from '../pages/app/RepresentanteInstitucion.svelte';
import Coordinador from '../pages/app/Coordinador.svelte';
import MaterialCargoEntrega from '../pages/app/MaterialCargoEntrega.svelte';
import MaterialLocal from '../pages/app/MaterialLocal.svelte';
import PaquetesDetalle from '../pages/app/PaquetesDetalle.svelte';
import MaterialDetalle from '../pages/app/MaterialDetalle.svelte';



export let basepath = '/admin';

const toggleRootClass = () => {
  const current = document.documentElement.getAttribute('data-bs-theme');
  const inverted = current === 'dark' ? 'light' : 'dark';
  document.documentElement.setAttribute('data-bs-theme', inverted);
}

const toggleLocalStorage = () => {
  if (isLight()) {
    localStorage.removeItem('light');
  } else {
    localStorage.setItem('light', 'set');
  }
}

const isLight = () => {
  return localStorage.getItem('light');
}

onMount(() => {
  const sidebarToggle = document.querySelector('#sidebar-toggle');
  if (sidebarToggle) {
    sidebarToggle.addEventListener('click', () => {
      document.querySelector('#sidebar').classList.toggle('collapsed');
    });
  }

  const themeToggle = document.querySelector('.theme-toggle');
  if (themeToggle) {
    themeToggle.addEventListener('click', () => {
      toggleLocalStorage();
      toggleRootClass();
    });
  }

  if (isLight()) {
    toggleRootClass();
  }
});
</script>

<style></style>

<div class="wrapper">
  <Sidebar />
  <div class="main">
    <Navbar />
    <main class="content px-3 py-2">
      <div class="container-fluid">
        <Router basepath="{basepath}">
          <Route path="/" component={Home} />
          <Route path="/condicion-recepcion" component={CondicionRecepcion} />
          <Route path="/cargo" component={Cargo} />
          <Route path="/paquetes" component={Paquete} />
          <Route path="/departamento" component={Departamento} />
          <Route path="/personal-entrega" component={PersonalEntrega} />
          <Route path="/local-votacion" component={LocalVotacion} />
          <Route path="/material" component={Material} />
          <Route path="/provincia" component={Provincias} />
          <Route path="/distrito" component={Distrito} />
          <Route path="/acta-recepcion" component={ActaRecepcion} />
          <Route path="/cargo-entrega" component={CargoEntrega} />
          <Route path="/representante-institucion" component={RepresentanteInstitucion} />
          <Route path="/coordinador" component={Coordinador} />
          <Route path="/material-cargo-entrega" component={MaterialCargoEntrega} />
          <Route path="/material-local" component={MaterialLocal} />
          <Route path="/paquetes/new" component={PaquetesDetalle} />
          <Route path="/material/new" component={MaterialDetalle} />
        </Router>
      </div>
    </main>
    <ThemeToggle />
    <Footer />
  </div>
</div>

