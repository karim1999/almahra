import Vuex from 'vuex'

const createStore = () => {
  return new Vuex.Store({
    state: () => ({
      userId: 0,
      login: 0,
      hot_request: 0,
      store: 1,
      cart: {}
    }),
    mutations: {
      changeUser (state, id) {
        state.userId= id;
      },
      changeLogin (state, value) {
        state.login= value;
      },
      changeHotRequest (state, value) {
        state.hot_request= value;
      },
      changeStore (state, value) {
        state.store= value;
      }
    },
    actions: {
      increment (context) {

      }
    }
  })
};

export default createStore
