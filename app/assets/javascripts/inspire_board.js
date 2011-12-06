window.InspireBoard = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  init: function() {
    this.dribbble_shots = new InspireBoard.Collections.DribbbleShots();
    this.dribbble_shots.fetch();
    new InspireBoard.Routers.DribbbleShots(this.dribbble_shots);
    Backbone.history.start();
  }
};
