export default {
    template: `
        <div class="container">
            <div class="jumbotron roku-jumbotron">
                <h1 class="display-4">Welcome to Flashback!</h1>
                <p class="lead">Your favourite movies, tv shows, and music from yesteryear</p>
                <hr class="my-4">
                <form id="loginForm">
                    <div class="form-row align-items-center">
                        <div class="col-md-3 my-1">
                            <label class="sr-only" for="inlineFormInputName">Name</label>
                            <input v-model="input.username" type="text" class="form-control" id="inlineFormInputName" placeholder="username" required>
                        </div>

                        <div class="col-md-3 my-1">
                            <label class="sr-only" for="inlineFormPassword">Name</label>
                            <input v-model="input.password" type="password" class="form-control" id="inlineFormPassword" placeholder="password" required>
                        </div>

                        <div class="col-md-3 my-1">
                            <button v-on:click.prevent="login()" type="submit" class="btn btn-primary">Go!</button>
                        </div>
                    </div>
                </form>            
            </div>
        </div>
     `,

     data() {
        return {
            input: {
                username: "",
                password: ""
            },

        }
    },

    methods: {
        login() {
           //console.log(this.$parent.mockAccount.username);

           if(this.input.username != "" && this.input.password != "") {
           // fetch the user from the database and generate form data
           let formData = new FormData();

            formData.append("username", this.input.username);
            formData.append("password", this.input.password);

            let url = `./admin/scripts/admin_login.php`;

            fetch(url, {
                   method: 'POST',
                   body: formData
               })
                .then(res => res.json())
                .then(data => {
                   if (typeof data != "object") { // means that we're not getting a user object back
                       console.warn(data);
                       console.error("authentication failed!");
                       this.$emit("autherror", data);
                   } else {
                       this.$emit("authenticated", true, data[0]);
                       this.$router.replace({ name: "users" });
                   }
               })
            .catch(function(error) {
                console.log(error);
            });
       } else {
                console.log("A username and password needs to be entered");
           }
       }
   }
}
