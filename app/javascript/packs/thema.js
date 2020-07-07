var app = new Vue({
  el: '#app',
  data: {
    name: "",
    category: "",
    objectIndex: {},
    objectIndexBool: false,
    checkedObjects: [],
    checkedNamesBool: false,
    categoryIndex: {},
    categoryIndexBool: false
  },
  methods: {
    onClick: function(){
      var name = this.name;
      axios({
        method: 'get',
        url: `/get_objects?name=${name}`
      })
      .then(res => {
        this.objectIndexBool = true;
        this.objectIndex = res.data;
        console.log(this.objectIndex);
      });
    },
    checkObjectName: function(){
      var objects = [];
      var object = document.getElementsByName("object");
    
      for (let i = 0; i < object.length; i++){
        if(object[i].checked){
          objects.push(object[i].value[0]);
        }
      }
      document.getElementById('object_ids').value = objects;
    },
    checkCategoryName: function(){
      var id = this.value[0];
      document.getElementById('object_ids').value = 1;
    }
  }
});