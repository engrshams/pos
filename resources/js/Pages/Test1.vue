<script setup>
import SideNavLayout from '../Layout/SideNavLayout.vue';
import { Link } from '@inertiajs/vue3'
</script>
<template>
    <SideNavLayout>
        <h1>Test 1</h1>
        <p>This is a test page.</p><br/>       
        <div><Link href="/main"> Home Page </Link></div>
    </SideNavLayout>
</template>
<style scoped></style>