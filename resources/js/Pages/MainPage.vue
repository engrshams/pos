<script setup>
import { Link } from '@inertiajs/vue3'
</script>
<template>
  <h1>Home Page</h1>  
  <Link href="/test"> Test Page  </Link><br/>
  <Link href="/test1"> NavBar Page  </Link>
  <br><br>
  <button @click="$inertia.visit('/test')" class="btn btn-primary">Test Page </button>
</template>
<style scoped>
</style>
