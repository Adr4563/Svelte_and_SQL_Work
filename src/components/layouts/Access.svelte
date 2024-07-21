<script lang="ts">
  import { Router, Route } from 'svelte-routing';
  import Login from '../pages/access/Login.svelte';
  import SignUp from '../pages/access/SignUp.svelte';
  import ResetPassword from '../pages/access/ResetPassword.svelte';
  export let basepath = '/';

</script>
  
<style></style>
  
<Router basepath="{basepath}">
  <Route path="/login" component={Login} />
  <Route path="/sign-up" component={SignUp} />
  <Route path="/reset-password" component={ResetPassword} />
</Router>