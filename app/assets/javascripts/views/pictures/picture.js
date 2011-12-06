InspireBoard.Views.Picture = Backbone.View.extend({
  className: 'picture',
  
  initialize: function() {
    _.bindAll(this, "render");
  },
  
  render: function() {
    $(this.el).html(JST['pictures/item']({ model: this.model }));
    return this;
  }
});