<template>
  <!-- Product Detail -->
  <section class="sec-product-detail bg0 p-t-65 p-b-60">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-lg-7 p-b-30">
          <div class="p-l-25 p-r-30 p-lr-0-lg">
            <div class="wrap-slick3 flex-sb flex-w">
              <div class="wrap-slick3-dots"></div>
              <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

              <div class="slick3 gallery-lb">
                <div class="item-slick3" data-thumb="images/product-detail-01.jpg">
                  <div class="wrap-pic-w pos-relative">
                    <img :src="product.image" alt="IMG-PRODUCT">
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-lg-5 p-b-30">
          <div class="p-r-50 p-t-5 p-lr-0-lg">
            <h4 class="mtext-105 cl2 js-name-detail p-b-14">
              {{product.name}}
            </h4>

            <span class="mtext-106 cl2">
							${{product.price}}
						</span>

            <p class="stext-102 cl3 p-t-23">
              {{product.desc}}
            </p>

            <!--  -->
            <div class="p-t-33">
              <div class="flex-w flex-r-m p-b-10">
                <div class="size-204 flex-w flex-m respon6-next">
                  <button @click="addToCart" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                    Add to cart
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

</template>

<script>
  import _ from "lodash";
  export default {
    name: 'Product',
    async asyncData ({ params, app }) {
      let response = await app.$axios.$get('/api/product-info?product_id=' + params.id);
      return { product: response.response }
    },
    data () {
      return {
        title: `Almahra | ${ this.$route.params.id }`
      }
    },
    head () {
      return {
        title: `Almahra | ${ this.product.name }`,
      }
    },
    methods: {
      addToCart(){
        let cart= JSON.parse(this.$localStorage.get('cart'));
        this.$localStorage.set('cart', JSON.stringify(_.compact(_.concat(cart, this.product))));
      },
      removeFromCart(){
        let cart= JSON.parse(this.$localStorage.get('cart'));
        cart= _.filter(cart, product => product.key !== this.product.key );
        this.$localStorage.set('cart', JSON.stringify(cart));
        this.$toast.show('Successfully added to cart');
      }
    },
  }
</script>

<style scoped>

</style>
