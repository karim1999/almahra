<template>
  <div style="min-height: 80vh;">
    <!-- Product -->
    <section class="sec-product bg0 p-t-50 p-b-50">
      <div class="container">
        <div class="p-b-32">
          <h3 class="ltext-105 cl5 txt-center respon1">
            {{$route.params.subname}}
          </h3>
        </div>
      </div>
      <!-- Product -->
      <div class="bg0 m-t-23 p-b-140">
        <div class="container">

          <div class="row isotope-grid">
            <div v-for="item in data" class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
              <!-- Block2 -->
              <div class="block2">
                <div class="block2-pic hov-img0">
                  <img height="200" :src="item.image" alt="IMG-PRODUCT">
                  <nuxt-link :to="{name: 'product-id', params: {id: item.key} }" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                    Quick View
                  </nuxt-link>
                </div>

                <div class="block2-txt flex-w flex-t p-t-14">
                  <div class="block2-txt-child1 flex-col-l ">
                    <a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                      {{item.name}}
                    </a>

                    <span class="stext-105 cl3">
									${{item.price}}
								</span>
                  </div>

                  <div class="block2-txt-child2 flex-r p-t-3">
                    <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                      <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                      <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <p v-if="!data">No data was found</p>
          </div>

          <!-- Load more -->
          <!--<div class="flex-c-m flex-w w-full p-t-45">-->
          <!--<a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">-->
          <!--Load More-->
          <!--</a>-->
          <!--</div>-->
        </div>
      </div>

    </section>

  </div>

</template>

<script>
  export default {
    name: "category",
    async asyncData ({ app, params }) {
      let response = await app.$axios.$get('/api/store-products?category_id='+params.sub+'&store_id='+params.category);
      return { data: response.response }
    },
    data () {
      return {
        title: 'Almahra | '+this.$route.params.subname,
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
