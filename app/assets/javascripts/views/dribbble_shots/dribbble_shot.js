InspireBoard.Views.DribbbleShot = Backbone.View.extend({
  tagName: 'li',
  
  initialize: function() {
    _.bindAll(this, "render");
  },
  
  render: function() {
    $(this.el).html(JST['dribbble_shots/item']({ model: this.model }));
    return this;
  }
});