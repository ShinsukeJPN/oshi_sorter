new Vue({
  el: '.l-wrapper',

  data(){
    return {
      isModalActive: true,
    }
  },
  methods: {
   /**
   * clickイベントが発火されたタイミングで、 
   * オーバーレイコンテンツを表示するフラグを持つdata(isModalActive)を切り替える
   */
    openItem() {
      this.toggleModal();
    },
    /**
    * active状態を切り替える。
    */
    toggleModal() {
      this.isModalActive = ! this.isModalActive;
    },
  }
});
