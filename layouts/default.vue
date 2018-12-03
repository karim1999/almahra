<template>
  <div>
    <app-header></app-header>
    <nuxt/>
    <app-footer></app-footer>
  </div>
</template>

<script>

  import AppHeader from "~/components/Header";
  import AppFooter from "~/components/Footer";
  export default {

    name: 'layout',
    components: {
      AppHeader,
      AppFooter
    },
  }
</script>

<style>
</style>
