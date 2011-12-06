InspireBoard.Routers.DribbbleShots = Backbone.Router.extend({
  routes: {
    "" : "index"
  },
  
  initialize: function(collection) {
    this.collection = collection;
  },
  
  index: function() {
    var view = new InspireBoard.Views.DribbbleShotsIndex({ collection: this.collection });
    $('.sidebar').html(view.render().el);
  }
});
