<script>
  import { onMount } from 'svelte';
  import { navigate } from 'svelte-routing';
  
  onMount(() => {

  });
</script>
<style></style>

<svelte:head>
	<title>Nosotros</title>
</svelte:head>
<section class="py-5">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-6">
        <h2>Nosotros</h2>
        <p class="lead">We are a company dedicated to providing the best services and products to our customers. Our team is passionate and committed to excellence.</p>
        <p>Founded in 2021, we have continuously strived to innovate and improve our offerings. Our mission is to deliver top-notch solutions that meet the needs of our diverse clientele.</p>
        <div class="mt-4">
          <a href="#" class="btn btn-primary me-2"><i class="bi bi-info-circle me-1"></i>Learn More</a>
          <a href="#" class="btn btn-outline-secondary"><i class="bi bi-telephone me-1"></i>Contact Us</a>
        </div>
      </div>
      <div class="col-lg-6">
        <img src="https://via.placeholder.com/600x400" class="img-fluid rounded" alt="About Image">
      </div>
    </div>
  </div>
</section>