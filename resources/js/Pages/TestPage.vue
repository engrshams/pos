<script setup>
import { Link } from '@inertiajs/vue3'
</script>
<template>
  <h1>Test Page</h1>
  <Link href="/main">Home Page </Link><br/>
  <Link href="/test1">NavBar Page </Link>
  <br><br>
  <button @click="$inertia.visit('/main')" class="btn btn-primary">Home Page </button>
</template>
<style scoped>
</style>
