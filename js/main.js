
import AllUsersComponent from './components/AllUsersComponent.js';
import LoginComponent from './components/LoginComponent.js';
import UserHomeComponent from './components/UserHomeComponent.js';
import KidsHomeComponent from './components/KidsHomeComponent.js';


  let router = new VueRouter({
    // set routes
    routes: [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/users', name: 'users', component: AllUsersComponent },
      { path: '/userhome', name: 'home', component: UserHomeComponent, props: true },
      { path: '/kidshome', name: 'kidshome', component: KidsHomeComponent, props: true }
    ]
  });

  const vm = new Vue({

    data: {
      socItems: [],
      authenticated: false,
      administrator: false,
  
      genericMessage: "hello from the parent",
  
      mockAccount: {
        username: "user",
        password: "password"
      },
  
      user: [],
  
      //currentUser: {},
  
      toastmessage: "Login failed!"
    },
  
    created: function() {
  
  
      if (localStorage.getItem("cachedUser")) {
        let user = JSON.parse(localStorage.getItem("cachedUser"));
        this.authenticated = true;
  
        this.$router.push({ name: "home", params: { currentuser: user }});
      } else {
        this.$router.push({ path: "/login"} );
      }
    },
  
    methods: {
      setAuthenticated(status, data) {
        this.authenticated = status;
        this.user = data;
      },
  
      popError(errorMsg) {
        // set the error message string and show the toast notification
        this.toastmessage = errorMsg;
        $('.toast').toast('show');
      },
  
      logout() {
        // delete local session
        if (localStorage.getItem("cachedUser")) {
          localStorage.removeItem("cachedUser");
        }
        // push user back to login page
        this.$router.push({ path: "/login" });
        this.authenticated = false;
  
  
      }
    },
  
    router: router
  }).$mount("#app");
  
  router.beforeEach((to, from, next) => {
    console.log('router fired!', to, from, vm.authenticated);
  
    if (vm.authenticated == false) {
      next("/login");
    } else {
      next();
    }
  
  
  });
  