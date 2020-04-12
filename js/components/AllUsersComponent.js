import UserComponent from './UserComponent.js';

export default {
	template: `
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h1 class="user-message">{{ message }}</h1>
			</div>
		</div>

		<div class="row">
			<user v-for="(user, index) in userList" :liveuser="user" :key="index" />
		</div>
	</div>
	`,
	created: function () {
		this.fetchAllUsers();
	},

	

	data() {
		return {
			message: `Who's Flashing Back?`,

			userList: []
		}
	},

	methods: {
		fetchAllUsers() {
		  let url = `./admin/scripts/users.php?allusers=true`;
  
		  fetch(url)
			.then(res => res.json())
			.then(data => {this.userList = data})
		  .catch(function(error) {
			console.error(error);
		  });
		}
	  },
  
	  components: {
		  user: UserComponent
	  }
}