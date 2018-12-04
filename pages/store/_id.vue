<template>
  <div>
    <!-- Product -->
    <section class="sec-product bg0 p-t-50 p-b-50">
      <div class="container">
        <div class="p-b-32">
          <h3 class="ltext-105 cl5 txt-center respon1">
            {{$route.params.id == 1 ? "Beauty Center" : "Clothes Center"}}
          </h3>
        </div>
      </div>
      <!-- Banner -->
      <div class="sec-banner bg0">
        <div class="flex-w flex-c-m">
          <div v-for="item in data" class="size-202 m-lr-auto respon4">
            <!-- Block1 -->
            <div class="block1 wrap-pic-w">
              <img src="images/banner-04.jpg" alt="IMG-BANNER">

              <nuxt-link :to="{ name: 'category-store-category-name', params: { store: $route.params.id, category: item.key, name: item.screenName }}" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                <div class="block1-txt-child1 flex-col-l">
							<span class="block1-name ltext-102 trans-04 p-b-8">
								{{item.screenName}}
							</span>

                  <!--<span class="block1-info stext-102 trans-04">-->
                  <!--Spring 2018-->
                  <!--</span>-->
                </div>

                <div class="block1-txt-child2 p-b-4 trans-05">
                  <div class="block1-link stext-101 cl0 trans-09">
                    Shop Now
                  </div>
                </div>
              </nuxt-link>
            </div>
          </div>
        </div>
      </div>

    </section>

  </div>

</template>

<script>
    export default {
      name: "store",
      async asyncData ({ params, app }) {
        let response = await app.$axios.$get('/api/store-categories?store_id=' + params.id);
        return { data: response.response }
      },
      data () {
        return {
          title: 'Almahra | Home',
        }
      },
      head () {
        return {
          title: this.title
        }
      },
      mounted(){
      },
      methods: {
      }
    }
</script>

<style scoped>

</style>
