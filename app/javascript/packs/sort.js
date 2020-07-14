var app = new Vue({
  el: '#app',
  data: {
    objectIndex = {}
  },
  methods: {
    window:onload = function() {  
      axios({
        method: 'get',
        url: `/return_first_objects`
      })
      .then(res => {
        this.objectIndex = res.data;
        console.log(this.objectIndex);
      });

    },
  }
});
