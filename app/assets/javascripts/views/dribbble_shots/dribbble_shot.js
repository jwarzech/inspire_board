InspireBoard.Views.DribbbleShot = Backbone.View.extend({
  className: 'dribbble-shot',
  
  initialize: function() {
    _.bindAll(this, "render");
  },
  
  render: function() {
    $(this.el).data('view', this);
    $(this.el).html(JST['dribbble_shots/item']({ model: this.model }));
    
    $(this.el).draggable({
      revert: "invalid"
    });
    
    return this;
  }
});