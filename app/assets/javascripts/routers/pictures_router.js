InspireBoard.Routers.Pictures = Backbone.Router.extend({
  routes: {
    "" : "index",
    "popular" : "popular"
  },
  
  initialize: function(dribbbleShots, userPictures) {
    this.dribbbleShots = dribbbleShots
    this.userPictures = userPictures
    
    var view = new InspireBoard.Views.PicturesIndex({ collection: this.userPictures });
    $('.content').html(view.render().el);
  },
  
  index: function() {
    this.popular();
  },
  
  popular: function() {
    var view = new InspireBoard.Views.DribbbleShotsIndex({ collection: this.dribbbleShots });
    $('.sidebar').html(view.render().el);
  }
});
