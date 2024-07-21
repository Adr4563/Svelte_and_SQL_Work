<script>
  import { onMount } from 'svelte';
  import { navigate } from 'svelte-routing';
  
  onMount(() => {

  });
</script>
<style></style>

<svelte:head>
	<title>Inicio</title>
</svelte:head>
<!-- Carousel -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://www.ulima.edu.pe/sites/default/files/banner/image/connect-2024_1-bannerwebulima-1170x550.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>First Slide</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://www.ulima.edu.pe/sites/default/files/banner/image/banner-web-redes.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second Slide</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://www.ulima.edu.pe/sites/default/files/banner/image/sgbachiller_webbanner_ulima_1170x550_2_002.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third Slide</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>

<!-- Features Section -->
<section class="py-5">
  <div class="container">
    <div class="row text-center">
      <div class="col-lg-4">
        <div class="mb-5">
          <div class="icon bg-primary text-white rounded-circle mb-3">
            <i class="bi bi-briefcase-fill"></i>
          </div>
          <h3 class="h4">Feature One</h3>
          <p>Some representative placeholder content for the first feature.</p>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="mb-5">
          <div class="icon bg-primary text-white rounded-circle mb-3">
            <i class="bi bi-card-checklist"></i>
          </div>
          <h3 class="h4">Feature Two</h3>
          <p>Some representative placeholder content for the second feature.</p>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="mb-5">
          <div class="icon bg-primary text-white rounded-circle mb-3">
            <i class="bi bi-bar-chart-fill"></i>
          </div>
          <h3 class="h4">Feature Three</h3>
          <p>Some representative placeholder content for the third feature.</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Call to Action Section -->
<section class="bg-light py-5">
  <div class="container">
    <div class="row text-center">
      <div class="col">
        <h2>Call to Action</h2>
        <p class="lead">A short description of your call to action.</p>
        <a href="#" class="btn btn-primary btn-lg">Get Started</a>
      </div>
    </div>
  </div>
</section>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-4">
  <p class="mb-0">© 2024 Your Brand. All rights reserved.</p>
</footer>