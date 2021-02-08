<template>
  <q-page class="bg-deep-purple1">
    <div class="row bg-primary">
      <div class="col">
        <div style="text-align:center" >
        <div class="text-h4 text-bold text-white q-mt-xl q-pt-xl q-pb-lg">Learn fullstack development from industry experts </div>
        <div class="text-h6 text-white q-pl-lg q-pr-lg q-pb-sm">Join annuity management system today </div>
        <q-input
          color="black"
          bg-color="white"
          filled
          placeholder="Your e-mail"
          class="q-pl-lg q-pr-lg q-pb-lg"
        >
        <template v-slot:prepend>
          <q-icon name="email" />
        </template>
        <template v-slot:append>
          <q-btn color="purple" label="Start Learning" />
        </template>
        </q-input>
        </div>
      </div>
      <div class="col gt-sm">
        <!-- <q-img
        margin-left:auto margin-right-auto; display:block
        src="../assets/quasar-logo-full.svg">
        </q-img> -->
      </div>
    </div>
    <div class="row">
      <div class="text-h5 text-bold q-px-md q-pt-md"> Blah blah blah </div>
    </div>
    <div class="row">
      <div class="col">
        <div class="q-pa-md">
        <q-card class="my-card">
          <q-video src="https://www.youtube.com/embed/k3_tw44QsZQ?rel=0" />

          <q-card-section>
            <div class="text-h6">Our Changing Planet</div>
            <div class="text-subtitle2">by John Doe</div>
          </q-card-section>

          <q-card-section class="q-pt-none">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua.
          </q-card-section>
        </q-card>
      </div>
    </div>
    </div>
  </q-page>
</template>

<script>
export default {
  name: 'PageIndex'
}
</script>
