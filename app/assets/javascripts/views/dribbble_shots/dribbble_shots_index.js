InspireBoard.Views.DribbbleShotsIndex = Backbone.View.extend({
  
  initialize: function() {
    _.bindAll(this, "render");
    this.collection.bind("reset", this.render);
  },
  
  render: function() {
    
    console.log(this.collection.length);
    
    $(this.el).html(JST['dribbble_shots/index']({ shots: this.collection }));
       
    var self = this;
    this.collection.each(function(shot) {
      var dribbbleShotView = new InspireBoard.Views.DribbbleShot({ model: shot });
      self.$('.media-grid').append(dribbbleShotView.render().el);
    });
    
    return this;
  }
});
