window.InspireBoard = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  init: function(pictures) {
    var userPictures = new InspireBoard.Collections.Pictures(pictures);
    var dribbbleShots = new InspireBoard.Collections.DribbbleShots();
    dribbbleShots.fetch();
    
    new InspireBoard.Routers.Pictures(dribbbleShots, userPictures);
    
    Backbone.history.start();
  }
};
