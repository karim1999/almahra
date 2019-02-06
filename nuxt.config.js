const pkg = require('./package')

module.exports = {
  mode: 'universal',
  server: {
    port: 80, // default: 3000
    host: '142.44.242.171', // default: localhost
  },
  /*
  ** Headers of the page
  */
  head: {
    title: pkg.name,
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: pkg.description }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
      { rel: 'stylesheet', href: 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' }
    ],
    script: [
      {
        src: '/vendor/jquery/jquery-3.2.1.min.js',
        type: "text/javascript"
      },
      {
        src: '/vendor/animsition/js/animsition.min.js' ,
        type: "text/javascript"
      },
      {
        src: '/vendor/bootstrap/js/popper.js',
        type: "text/javascript"
      },
      {
        src: '/vendor/bootstrap/js/bootstrap.min.js',
        type: "text/javascript"
      },
      {
        src: '/vendor/select2/select2.min.js',
        type: "text/javascript"
      },
      {
        src: '/vendor/MagnificPopup/jquery.magnific-popup.min.js',
        type: "text/javascript"
      },
      {
        src: '/vendor/perfect-scrollbar/perfect-scrollbar.min.js',
        type: "text/javascript"
      },
      {
        src: '/vendor/slick/slick.min.js',
        type: "text/javascript"
      },
      {
        src: '/js/slick-custom.js',
        type: "text/javascript"
      },
      {
        src: '/js/main.js',
      },
      {
        src: '/main.js',
        type: "text/javascript"
      }

    ],
  },

  /*
  ** Customize the progress-bar color
  */
  loading: { color: '#fff' },

  /*
  ** Global CSS
  */
  css: [
    '~/assets/vendor/bootstrap/css/bootstrap.min.css',
    '~/assets/fonts/iconic/css/material-design-iconic-font.min.css',
    '~/assets/fonts/linearicons-v1.0.0/icon-font.min.css',
    '~/assets/vendor/animate/animate.css',
    '~/assets/vendor/css-hamburgers/hamburgers.min.css',
    '~/assets/vendor/animsition/css/animsition.min.css',
    '~/assets/vendor/select2/select2.min.css',
    '~/assets/vendor/daterangepicker/daterangepicker.css',
    '~/assets/vendor/slick/slick.css',
    '~/assets/vendor/MagnificPopup/magnific-popup.css',
    '~/assets/vendor/perfect-scrollbar/perfect-scrollbar.css',
    '~/assets/css/util.css',
    '~/assets/css/main.css'
  ],

  /*
  ** Plugins to load before mounting the App
  */
  plugins: [
    { src: '~/plugins/vue-promise-btn', ssr: false },
    { src: '~/plugins/slider', ssr: false },
    { src: '~/plugins/vue-localstorage', ssr: false }
  ],

  /*
  ** Nuxt.js modules
  */
  modules: [
    // Doc: https://github.com/nuxt-community/axios-module#usage
    '@nuxtjs/axios',
    '@nuxtjs/toast',
    '@nuxtjs/auth'
  ],
  /*
  ** Axios module configuration
  */
  axios: {
    baseURL: "https://laila-api.herokuapp.com"

  },
  toast: {
    position: 'top-center',
    duration : 3000
  },

  auth: {
    strategies: {
      local: {
        endpoints: {
          login: { url: '/api/signin?', method: 'get' },
          user: { url: '/api/user-by-id?user_id=9', method: 'get'},
          logout: false
        }
      }
    }
  },
  /*
  ** Build configuration
  */
  build: {
    /*
    ** You can extend webpack config here
    */
    extend(config, ctx) {

    }
  }
}
