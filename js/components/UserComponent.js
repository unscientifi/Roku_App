export default {
    props: ['liveuser'],

    template: `
    <div class="col-xs-12 col-sm-6 col-md-3 mx-auto">
        <div class="cards rounded" @click="navToUserHome()">
            <div class="card-body text-center">
                <img :src="'images/user/' + liveuser.avatar" class=" img-fluid">
                <h3 class="userName">{{ liveuser.uname }}</h3>
            </div>
        </div>
    </div>`,

    
    created: function() {
        if (this.liveuser.avatar === null) {
            this.liveuser.avatar = "temp_avatar";
        }
    },

    methods: {
        navToUserHome() {
            this.$router.push({ name: "home", params: { currentuser: this.liveuser } });
            // set a localstorage session object so that we don't have to log back in on page refresh or after our initial login
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser));
        }
    }

}