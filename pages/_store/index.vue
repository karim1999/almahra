<template>
  <div>

    <!-- Slider -->
    <section class="section-slide">
      <div class="wrap-slick1">
        <div class="slick1">
          <div class="item-slick1" style="background-image: url(images/slide-01.jpg);">
            <div class="container h-full">
              <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                <div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
								<span class="ltext-101 cl2 respon2">
									Women Collection 2018
								</span>
                </div>

                <div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
                  <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                    NEW SEASON
                  </h2>
                </div>

                <div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
                  <!--<a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">-->
                    <!--Shop Now-->
                  <!--</a>-->
                </div>
              </div>
            </div>
          </div>

          <div class="item-slick1" style="background-image: url(images/slide-02.jpg);">
            <div class="container h-full">
              <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                <div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
								<span class="ltext-101 cl2 respon2">
									Men New-Season
								</span>
                </div>

                <div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
                  <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                    Jackets & Coats
                  </h2>
                </div>

                <div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
                  <!--<a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">-->
                    <!--Shop Now-->
                  <!--</a>-->
                </div>
              </div>
            </div>
          </div>

          <div class="item-slick1" style="background-image: url(images/slide-03.jpg);">
            <div class="container h-full">
              <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                <div class="layer-slick1 animated visible-false" data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-101 cl2 respon2">
									Men Collection 2018
								</span>
                </div>

                <div class="layer-slick1 animated visible-false" data-appear="rotateInUpRight" data-delay="800">
                  <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                    New arrivals
                  </h2>
                </div>

                <div class="layer-slick1 animated visible-false" data-appear="rotateIn" data-delay="1600">
                  <!--<a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">-->
                    <!--Shop Now-->
                  <!--</a>-->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

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
    <!-- Modal1 -->
    <div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
      <div class="overlay-modal1 js-hide-modal1"></div>

      <div class="container">
        <div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
          <button class="how-pos3 hov3 trans-04 js-hide-modal1">
            <img src="images/icons/icon-close.png" alt="CLOSE">
          </button>

          <div class="row">
            <div class="col-md-6 col-lg-7 p-b-30">
              <div class="p-l-25 p-r-30 p-lr-0-lg">
                <div class="wrap-slick3 flex-sb flex-w">
                  <div class="wrap-slick3-dots"></div>
                  <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

                  <div class="slick3 gallery-lb">
                    <div class="item-slick3" data-thumb="images/product-detail-01.jpg">
                      <div class="wrap-pic-w pos-relative">
                        <img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">

                        <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-01.jpg">
                          <i class="fa fa-expand"></i>
                        </a>
                      </div>
                    </div>

                    <div class="item-slick3" data-thumb="images/product-detail-02.jpg">
                      <div class="wrap-pic-w pos-relative">
                        <img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">

                        <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-02.jpg">
                          <i class="fa fa-expand"></i>
                        </a>
                      </div>
                    </div>

                    <div class="item-slick3" data-thumb="images/product-detail-03.jpg">
                      <div class="wrap-pic-w pos-relative">
                        <img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">

                        <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-03.jpg">
                          <i class="fa fa-expand"></i>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-6 col-lg-5 p-b-30">
              <div class="p-r-50 p-t-5 p-lr-0-lg">
                <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                  Lightweight Jacket
                </h4>

                <span class="mtext-106 cl2">
								$58.79
							</span>

                <p class="stext-102 cl3 p-t-23">
                  Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
                </p>

                <!--  -->
                <div class="p-t-33">
                  <div class="flex-w flex-r-m p-b-10">
                    <div class="size-203 flex-c-m respon6">
                      Size
                    </div>

                    <div class="size-204 respon6-next">
                      <div class="rs1-select2 bor8 bg0">
                        <select class="js-select2" name="time">
                          <option>Choose an option</option>
                          <option>Size S</option>
                          <option>Size M</option>
                          <option>Size L</option>
                          <option>Size XL</option>
                        </select>
                        <div class="dropDownSelect2"></div>
                      </div>
                    </div>
                  </div>

                  <div class="flex-w flex-r-m p-b-10">
                    <div class="size-203 flex-c-m respon6">
                      Color
                    </div>

                    <div class="size-204 respon6-next">
                      <div class="rs1-select2 bor8 bg0">
                        <select class="js-select2" name="time">
                          <option>Choose an option</option>
                          <option>Red</option>
                          <option>Blue</option>
                          <option>White</option>
                          <option>Grey</option>
                        </select>
                        <div class="dropDownSelect2"></div>
                      </div>
                    </div>
                  </div>

                  <div class="flex-w flex-r-m p-b-10">
                    <div class="size-204 flex-w flex-m respon6-next">
                      <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                        <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                          <i class="fs-16 zmdi zmdi-minus"></i>
                        </div>

                        <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

                        <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                          <i class="fs-16 zmdi zmdi-plus"></i>
                        </div>
                      </div>

                      <button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                        Add to cart
                      </button>
                    </div>
                  </div>
                </div>

                <!--  -->
                <div class="flex-w flex-m p-l-100 p-t-40 respon7">
                  <div class="flex-m bor9 p-r-10 m-r-11">
                    <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
                      <i class="zmdi zmdi-favorite"></i>
                    </a>
                  </div>

                  <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
                    <i class="fa fa-facebook"></i>
                  </a>

                  <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
                    <i class="fa fa-twitter"></i>
                  </a>

                  <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
                    <i class="fa fa-google-plus"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

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
    $('.wrap-slick1').each(function(){
      var wrapSlick1 = $(this);
      var slick1 = $(this).find('.slick1');


      var itemSlick1 = $(slick1).find('.item-slick1');
      var layerSlick1 = $(slick1).find('.layer-slick1');
      var actionSlick1 = [];


      $(slick1).on('init', function(){
        var layerCurrentItem = $(itemSlick1[0]).find('.layer-slick1');

        for(var i=0; i<actionSlick1.length; i++) {
          clearTimeout(actionSlick1[i]);
        }

        $(layerSlick1).each(function(){
          $(this).removeClass($(this).data('appear') + ' visible-true');
        });

        for(var i=0; i<layerCurrentItem.length; i++) {
          actionSlick1[i] = setTimeout(function(index) {
            $(layerCurrentItem[index]).addClass($(layerCurrentItem[index]).data('appear') + ' visible-true');
          },$(layerCurrentItem[i]).data('delay'),i);
        }
      });


      var showDot = false;
      if($(wrapSlick1).find('.wrap-slick1-dots').length > 0) {
        showDot = true;
      }

      $(slick1).slick({
        pauseOnFocus: false,
        pauseOnHover: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        fade: true,
        speed: 1000,
        infinite: true,
        autoplay: true,
        autoplaySpeed: 6000,
        arrows: true,
        appendArrows: $(wrapSlick1),
        prevArrow:'<button class="arrow-slick1 prev-slick1"><i class="zmdi zmdi-caret-left"></i></button>',
        nextArrow:'<button class="arrow-slick1 next-slick1"><i class="zmdi zmdi-caret-right"></i></button>',
        dots: showDot,
        appendDots: $(wrapSlick1).find('.wrap-slick1-dots'),
        dotsClass:'slick1-dots',
        customPaging: function(slick, index) {
          var linkThumb = $(slick.$slides[index]).data('thumb');
          var caption = $(slick.$slides[index]).data('caption');
          return  '<img src="' + linkThumb + '">' +
            '<span class="caption-dots-slick1">' + caption + '</span>';
        },
      });

      $(slick1).on('afterChange', function(event, slick, currentSlide){

        var layerCurrentItem = $(itemSlick1[currentSlide]).find('.layer-slick1');

        for(var i=0; i<actionSlick1.length; i++) {
          clearTimeout(actionSlick1[i]);
        }

        $(layerSlick1).each(function(){
          $(this).removeClass($(this).data('appear') + ' visible-true');
        });

        for(var i=0; i<layerCurrentItem.length; i++) {
          actionSlick1[i] = setTimeout(function(index) {
            $(layerCurrentItem[index]).addClass($(layerCurrentItem[index]).data('appear') + ' visible-true');
          },$(layerCurrentItem[i]).data('delay'),i);
        }

      });

    });

  },
  methods: {
  }
}
</script>

<style>
</style>
