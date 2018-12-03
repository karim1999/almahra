<template>

  <!-- Footer -->
  <footer class="bg3 p-t-25 p-b-25">
    <div class="container">
       <p class="stext-107 cl6 txt-center">
          Copyright &copy;{{year}} All rights reserved to Fletchers

        </p>
      </div>
  </footer>


</template>

<script>
  export default {
    name: 'Footer',
    data () {
      return {
        year: new Date().getFullYear()
      }
    }
  }
</script>

<style scoped>

</style>
