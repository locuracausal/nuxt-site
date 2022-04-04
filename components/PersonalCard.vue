<template>
  <v-container>
    <v-row justify="space-around">
      <v-card width="600">
        <v-img
          height="200px"
          src="https://codigoonclick.com/wp-content/uploads/2019/02/curso-vue-js-2.jpg"
        >
          <v-card-title class="white--text d-flex justify-center">
            <v-hover v-slot="{ hover }">
              <v-avatar :size="hover ? 150 : avatarSize">
                <img
                  alt="user"
                  src="https://cdn.pixabay.com/photo/2020/06/24/19/12/cabbage-5337431_1280.jpg"
                >
              </v-avatar>
            </v-hover>
            <p class="ml-3">
              Iván
            </p>
          </v-card-title>
        </v-img>

        <v-card-text>
          <div class="font-weight-bold ml-8 mb-2">
            Today
          </div>

          <v-timeline
            align-top
            dense
          >
            <v-timeline-item
              v-for="message in messages"
              :key="message.time"
              :color="message.color"
              small
            >
              <div>
                <div class="font-weight-normal">
                  <strong>{{ message.from }}</strong> @{{ message.time }}
                </div>
                <div>{{ message.message }}</div>
              </div>
            </v-timeline-item>
          </v-timeline>
        </v-card-text>
      </v-card>
    </v-row>
  </v-container>
</template>
<script>
export default {
  data: () => ({
    avatarSize: 100,
    messages: [
      {
        from: 'You',
        message: 'Sure, I\'ll see you later.',
        time: '10:42am',
        color: 'deep-purple lighten-1'
      },
      {
        from: 'John Doe',
        message: 'Yeah, sure. Does 1:00pm work?',
        time: '10:37am',
        color: 'green'
      },
      {
        from: 'You',
        message: 'Did you still want to grab lunch today?',
        time: '9:47am',
        color: 'deep-purple lighten-1'
      }
    ]
  }),

  // Method of Vainilla script
  methods: {
    incrementAvatar () {
      setTimeout(() => {
        this.avatarSize++
        this.incrementAvatar()
      }, 100)
    }
  }
}
</script>
