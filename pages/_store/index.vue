<template>
  <div>
    <!-- Product -->
    <section class="sec-product bg0 p-t-50 p-b-50">
      <div class="container">
        <div class="p-b-32">
          <h3 class="ltext-105 cl5 txt-center respon1">
            {{$route.params.store == 1 ? "Beauty Center" : "Clothes Center"}}
          </h3>
        </div>
      </div>
      <!-- Banner -->
      <div class="sec-banner bg0">
        <div class="flex-w flex-c-m">
          <div v-for="item in data" class="size-202 m-lr-auto respon4">
            <!-- Block1 -->
            <div class="block1 wrap-pic-w">
              <img height="420" :src="item.image" alt="IMG-BANNER">
              <nuxt-link :to="{ name: 'store-category-category-name', params: { store: $route.params.store, category: item.key, name: item.name }}" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">

                <div class="block1-txt-child1 flex-col-l">
							<span class="block1-name ltext-102 trans-04 p-b-8">
								{{item.name}}
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
  name: 'Home',
  async asyncData ({ params, app }) {
    let response = await app.$axios.$get('/api/stores?user_id=8&maxcost=300&maxtime=300&sortby=2&page=0&id=' + params.store);
    return { data: response.stores }
  },
  data () {
    return {
      title: this.$route.params.store == 1 ? "Almahra | Beauty Center" : "Almahra | Clothes Center",
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

<style>
</style>
