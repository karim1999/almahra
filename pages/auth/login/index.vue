<template>
  <div class="container login-container">
    <div class="row">
      <form v-on:submit.prevent='signIn' class="col-md-6 login-form-1">
        <h3>{{this.$store.state.userid}}</h3>
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
          <button type="submit" class="btnSubmit" >Login</button>
        </div>
<!--
        <div class="form-group">
          <a href="#" class="btnForgetPwd">Forget Password?</a>
        </div>
-->

      </form>
      <form v-on:submit.prevent='signUp' class="col-md-6 login-form-2">
        <div class="login-logo">
          <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
        </div>
        <h3>Sign up</h3>
        <div v-if="register.errorMsg" class="alert alert-danger" role="alert">
          {{register.errorMsg}}
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
          <input required v-model="register.location" type="text" class="form-control" placeholder="Location" value="" />
        </div>
        <div class="form-group">
          <input required style="display: inline" v-model="register.accept" type="checkbox" name="accept" />
          I accept the <a href="http://138.197.98.186:3000/terms-and-policy" style="color: white">terms & conditions</a>
        </div>
        <div class="form-group">
          <button type="submit" class="btnSubmit" >Register</button>
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
          location: '',
          phone: '',
          username: '',
          errorMsg: "",
          accept: false
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
    methods: {
      async signUp(){
        this.register.errorMsg= "";
        this.isRegistering= true;
        if(this.register.password.length < 6)
        {
          this.register.errorMsg= "The password is too short. Only password with 6 characters or more are allowed";
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



        if(this.register.phone.length != 10)
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

        let emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        let isValidEmail = emailRegex.test(this.register.email);



        this.register.errorMsg= "";

        await this.$axios.$get('/api/signup?phone='+this.state.phone.substr(1)+ '&password='+this.state.password + '&email='+this.state.email + '&username='+this.state.username).then(response => {
          if(response.response == 0)
          {
            this.register.errorMsg= "This email does already exist";
          }
          else
          {
            alert(JSON.stringify(response))
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
      async signIn(){
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
        await this.$auth.loginWith('local', {
          params: {
            identifier: this.login.username,
            password: this.login.password
          }
        }).then(response => {
          alert(response)
        }).catch(error => {
          // alert("error")
        });
        // await this.$axios.$get('/api/signin?identifier=' + this.login.username + '&password=' + this.login.password).then(response => {
        //   this.$auth.setToken('local', response.response);
        // }).catch(error => {
        //   alert(JSON.stringify(error))
        // });
        this.isLogging= false;
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
