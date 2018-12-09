<template>
  <div class="container login-container">
    <div class="row">
      <form v-on:submit.prevent='signIn' class="col-md-6 login-form-1">
        <h3>Login</h3>
        <div v-if="login.errorMsg" class="alert alert-danger" role="alert">
          {{login.errorMsg}}
        </div>
        <div class="form-group">
          <input required v-model="login.username" type="text" class="form-control" placeholder="Username *" value="" />
        </div>
        <div class="form-group">
          <input required v-model="login.password" type="password" class="form-control" placeholder="Password *" value="" />
        </div>
        <div class="form-group">
          <button v-promise-btn @click="signIn" type="submit" class="btnSubmit" >Login</button>
        </div>
<!--
        <div class="form-group">
          <a href="#" class="btnForgetPwd">Forget Password?</a>
        </div>
-->

      </form>
      <form v-if="confirmation.status" v-on:submit.prevent='confirmAccount' class="col-md-6 login-form-2">
        <div class="login-logo">
          <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
        </div>
        <h3>Confirmation</h3>
        <div v-if="confirmation.errorMsg" class="alert alert-danger" role="alert">
          {{confirmation.errorMsg}}
        </div>
        <div class="form-group">
          <input required v-model="confirmation.phone" type="text" class="form-control" placeholder="phone" />
        </div>
        <div class="form-group">
          <input required v-model="confirmation.code" type="text" class="form-control" placeholder="code" />
        </div>
        <div class="form-group">
          <button v-promise-btn @click="confirmAccount" type="submit" class="btnSubmit" >Confirm</button>
        </div>
        <div class="form-group">
          <button type="button" @click="confirmation.status = false" class="btnSubmit" >Back to Registration</button>
        </div>

      </form>
      <form v-else v-on:submit.prevent='signUp' class="col-md-6 login-form-2">
        <div class="login-logo">
          <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
        </div>
        <h3>Sign up</h3>
        <div v-if="register.errorMsg" class="alert alert-danger" role="alert">
          {{register.errorMsg}}
        </div>
        <div class="form-group">
          <input required v-model="register.username" type="text" class="form-control" placeholder="Username" value="" />
        </div>
        <div class="form-group">
          <input required v-model="register.email" type="email" class="form-control" placeholder="Email" value="" />
        </div>
        <div class="form-group">
          <input required v-model="register.password" type="password" class="form-control" placeholder="Password" value="" />
        </div>
        <div class="form-group">
          <input required v-model="register.cpassword" type="password" class="form-control" placeholder="Password Confirmation" value="" />
        </div>
        <div class="form-group">
          <input required v-model="register.phone" type="number" class="form-control" placeholder="Phone" value="" />
        </div>
        <div class="form-group">
          <input required style="display: inline" v-model="register.accept" type="checkbox" name="accept" />
          I accept the <a href="http://138.197.98.186:3000/terms-and-policy" style="color: white">terms & conditions</a>
        </div>
        <div class="form-group">
          <button v-promise-btn @click="signUp" type="submit" class="btnSubmit" >Register</button>
        </div>
        <div class="form-group">
          <button type="button" @click="confirmation.status = true" class="btnSubmit" >Confirm your account</button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
  const config = require('./../../../config');

  export default {
    name: 'Login',
    data () {
      return {
        title: 'Almahra | Login',
        isLogging: false,
        login: {
          username: "",
          password: "",
          errorMsg: ""
        },
        isRegistering: false,
        register: {
          email: "",
          password: "",
          cpassword: '',
          phone: '',
          username: '',
          errorMsg: "",
          accept: false
        },
        isConfirming: false,
        confirmation: {
          status: false,
          code: "",
          errorMsg: "",
          phone: ""
        }
      }
    },
    head () {
      return {
        title: this.title,
        meta: [
          // hid is used as unique identifier. Do not use `vmid` for it as it will not work
          { hid: 'description', name: 'description', content: 'My custom description' }
        ]
      }
    },
    mounted(){
      if(this.$store.state.userId){
        this.$router.push({
          path: '/'
        })
      }
    },
    methods: {
      confirmAccount(){
        this.isConfirming= true;
        return this.$axios.$get('/api/verifycode?code=' + this.confirmation.code + '&identifier=' + this.confirmation.phone+ '&process=' + 0).then(response => {
          this.isConfirming= false;
          if (response.response == 2) {
              // signup
            this.$localStorage.set('userId', response.id);
            this.$store.commit('changeUser', response.id);
            this.$toast.show('You have verified your account successfully');
            this.$router.push({
              path: '/'
            })

          } else if (response.response == 3)
            this.confirmation.errorMsg= "This phone number is not registered in our database";
          else if (response.response == 0)
            this.confirmation.errorMsg= "This phone number has already been confirmed";
          else if (response.response == 1)
            this.confirmation.errorMsg= "Wrong confirmation code";
        }).catch(error => {
          this.isConfirming= false;
          this.$toast.show('Error');
        });

      },
      signUp(){
        this.register.errorMsg= "";
        this.isRegistering= true;
        if(this.register.password.length < 6)
        {
          this.register.errorMsg= "The password is too short. Only passwords with 6 characters or more are allowed";
          this.isRegistering= false;
          return;
        }
        if(this.register.phone.length < 6)
        {
          this.register.errorMsg= "Wrong phone number";
          this.isRegistering= false;

          return;
        }
        // if(this.register.phone.charAt(0) != 0)
        // {
        //   this.login.errorMsg= "";
        //   this.isRegistering= false;
        //   return;
        // }
        if(this.register.password != this.register.cpassword)
        {
          this.register.errorMsg= "Password confirmation is wrong";
          this.isRegistering= false;

          return;
        }

        if(this.register.username.length < 3)
        {
          this.register.errorMsg= "Username is too short";
          this.isRegistering= false;

          return;
        }



        if(this.register.phone.length < 10)
        {
          this.register.errorMsg= "Wrong phone number";
          this.isRegistering= false;

          return;
        }

        if(this.register.email.length == 0)
        {
          this.register.errorMsg= "Email is required";
          this.isRegistering= false;

          return;
        }
        if(!this.register.accept)
        {
          this.register.errorMsg= "You have to accept the terms & conditions first";
          this.isRegistering= false;

          return;
        }

        let emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        let isValidEmail = emailRegex.test(this.register.email);



        this.register.errorMsg= "";

        return this.$axios.$get('/api/signup?phone='+this.register.phone.substr(1)+ '&password='+this.register.password + '&email='+this.register.email + '&username='+this.register.username+ '&location=egypt&latitude=1&longitude=1&region=egypt').then(response => {
          if(response.response == 0)
          {
            this.register.errorMsg= "This email does already exist";
          }
          else
          {
            this.confirmation.status= true;
            this.confirmation.errorMsg= "";
            this.confirmation.code= "";
            this.confirmation.phone= this.register.phone;
            this.$toast.show('You have registered successfully. Please check your phone for a verification code');
            // alert(JSON.stringify(response))
          }
        }).catch(error => {
          alert(JSON.stringify(error))
        });

          // fetch(Server.dest + '/api/signup?phone='+this.state.phone.substr(1)+
          //   '&password='+this.state.password +
          //   '&email='+this.state.email +
          //   '&username='+this.state.username +
          //   locationData,
          //   {headers: {'Cache-Control': 'no-cache'}}).
          // then((res) => res.json()).then((resJson) => {
          //   if(resJson.response == 0)
          //   {
          //     this.setState({ errorMsg: 'انت بالفعل مُسجل عندنا' });
          //   }
          //   else
          //   {
          //     // Navigate to confirm screen
          //     this.props.navigation.navigate("CodeVerification", { process: 0 /* means SIGN-UP*/,
          //       device: this.state.phone.substr(1) });
          //   }
          // })
      },
      signIn(){
        // alert(this.$axios.defaults.baseURL);
        if (this.login.password.length < 6) {
          this.login.errorMsg= "Wrong username or password";
          return;
        }

        if (this.login.username.length < 3) {
          this.login.errorMsg= "Wrong username or password";
          return;
        }

        if (/\s/g.test(this.login.username)) {
          this.login.errorMsg= "Spaces are not allowed";
          return;
        }
        //
        this.login.errorMsg= "";
        this.isLogging= true;
        // await this.$auth.loginWith('local', {
        //   params: {
        //     identifier: this.login.username,
        //     password: this.login.password
        //   }
        // }).then(response => {
        //   alert(response)
        // }).catch(error => {
        //   // alert("error")
        // });
        return this.$axios.$get('/api/signin?identifier=' + this.login.username + '&password=' + this.login.password).then(response => {
          this.isLogging= false;
          if(response.response != 0){
            this.$localStorage.set('userId', response.response);
            this.$store.commit('changeUser', response.response);
            this.$toast.show('You have signed in successfully');
            this.$router.push({
              path: '/'
            })
          }else{
            this.login.errorMsg= "Wrong usernmae or password";
          }
        }).catch(error => {
          this.isLogging= false;
          this.$toast.show('Error');
        });
        // fetch(Server.dest + '/api/signin?identifier=' + this.state.identifier +
        //   '&password=' + this.state.password, { headers: { 'Cache-Control': 'no-cache' } }).
        // then((res) => res.json()).then((resJson) => {
        //   console.log("response" + resJson.response)
        //   if (resJson.response == 0)
        //     this.setState({ errorMsg: 'انت لست مُسجل عندنا او كلمة مرور غير صحيحة' });
        //   else if (resJson.response == -1)
        //     this.setState({ errorMsg: 'نعتذر و نقدر لك تعاونك ، و يؤسفنا حظر حسابك لعدة أسباب ، راجع إدارة التطبيق لإلغاء الحظر' });
        //   else {
        //     AsyncStorage.setItem('userid', resJson.response);
        //     this.setLoginStatus('1');
        //     this.storeFCMToken(resJson.response);
        //     // this.navigateToHome();
        //   }
        // })
      }
    }
  }
</script>

<style scoped>
  .login-container{
    margin-top: 5%;
    margin-bottom: 5%;
  }
  .login-logo{
    position: relative;
    margin-left: -41.5%;
  }
  .login-logo img{
    position: absolute;
    width: 20%;
    margin-top: 19%;
    background: #282726;
    border-radius: 4.5rem;
    padding: 5%;
  }
  .login-form-1{
    padding: 9%;
    background:#282726;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
  }
  .login-form-1 h3{
    text-align: center;
    margin-bottom:12%;
    color:#fff;
  }
  .login-form-2{
    padding: 9%;
    background: #6F7DDB;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
  }
  .login-form-2 h3{
    text-align: center;
    margin-bottom:12%;
    color: #fff;
  }
  .btnSubmit{
    font-weight: 600;
    width: 50%;
    color: #282726;
    background-color: #fff;
    border: none;
    border-radius: 1.5rem;
    padding:2%;
  }
  .btnForgetPwd{
    color: #fff;
    font-weight: 600;
    text-decoration: none;
  }
  .btnForgetPwd:hover{
    text-decoration:none;
    color:#fff;
  }
</style>
