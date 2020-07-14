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
      delete_input_hidden();
      for (let i = 0; i < object.length; i++){
        if(object[i].checked){
          objects.push(object[i].value[0]);
        }
      }
      for (let i = 0; i < objects.length; i++){
        create_input_hidden(objects[i], 'new_thema');
      }
    },
  }
});


function create_input_hidden(i, formname){
  var input = document.createElement("input");
  input.type = "hidden";
  input.name = "thema[sort_object_ids][]";
  input.id = "thema_sort_object_ids" + "_" + i;
  input.value = i;
  document.forms[0].appendChild(input);
}; 

function delete_input_hidden(){
  var element = document.getElementsByName('thema[sort_object_ids][]'), index;

  for (index = element.length - 1; index >= 0; index--) {
    element[index].parentNode.removeChild(element[index]);
  }
};