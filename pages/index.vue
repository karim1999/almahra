<template>
    <div style="display: flex; flex: 1; background-color: #563d7c; min-height: 100vh; width: 100%; color: white; text-align: center; justify-content: center; align-items: center">
      <div style="justify-content: center; align-items: center; text-align: center">
        <button @click="chooseStore(2)" class="btn btn-lg btn-dark" style="padding: 20px 30px; border-radius: 10px; margin-right: 70px">
          <i style="font-size: 130px;" class="fa fa-user"></i>
        </button>
        <p style="margin-right: 70px; font-size: 30px; margin-top: 10px">Clothes Center</p>
      </div>
      <div style="justify-content: center; align-items: center; text-align: center">
        <button @click="chooseStore(1)" class="btn btn-lg btn-dark" style="padding: 20px 30px; border-radius: 10px">
          <i style="font-size: 130px;" class="fa fa-female"></i>
        </button>
        <p style="font-size: 30px; margin-top: 10px">Beauty Center</p>
      </div>
      <!--<button class="btn btn-lg btn-dark" style="padding: 20px 30px; border-radius: 10px">-->
        <!--<i style="font-size: 100px;" class="fa fa-shirtsinbulk"></i>-->
        <!--&lt;!&ndash;Beauty Center&ndash;&gt;-->
      <!--</button>-->
    </div>
</template>

<script>
    export default {
      layout: 'choose',
      name: 'Choose',
      data () {
        return {
          title: `Almahra | Choose Store`
        }
      },
      head () {
        return {
          title: this.title,
        }
      },
      methods: {
        chooseStore(id){
          this.$store.commit('changeStore', id);
          this.$router.push({
            path: '/'+id
          })
        }
      }
    }
</script>

<style scoped>

</style>
