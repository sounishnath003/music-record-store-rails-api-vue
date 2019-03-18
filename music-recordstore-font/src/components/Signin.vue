<template>
    <div class="max-w-sm m-auto my-8">
      <div class="border p-10 border-indigo-light shadow-lg rounded">
        <h3 class="text-2xl mb-6 text-indigo-darker">Sign In</h3>
        <form @submit.prevent="signin">
          <div class="text-red" v-if="error">
            {{ error }}
            </div>

            <div class="mb-6">
              <label for="email" class="label">E-mail Address</label>
              <input type="email" name="email" id="email" v-model="email" placeholder="flock.sinasini@gmail.com" class="input">
            </div>

            <div class="mb-6">
              <label for="password" class="label">Password</label>
              <input type="password" name="password" id="password" v-model="password" placeholder="**** **** **** **** **** ****" class="input">
            </div>

            <button type="submit" class="px-4 py-3 rounded cursor-pointer no-underline bg-green hover:bg-green-dark block w-full text-white items-center justify-center">Sign In</button>

            <div class="my-4">
              <router-link to="/signup" class="link">Sign Up</router-link>
            </div>

        </form>
      </div>
    </div>
</template>

<script>
export default {
  name: 'Signin',
  data () {
    return {
      email: '',
      password: '',
      error: ''
    }
  },
  created () {
    this.checkSignedIn()
  },
  updated () {
    this.checkSignedIn()
  },
  methods: {
    signin () {
      this.$http.plain
    }
  }
}
</script>