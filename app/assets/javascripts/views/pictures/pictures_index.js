InspireBoard.Views.PicturesIndex = Backbone.View.extend({
  id: 'pictures',
  
  events: {
    "drop" : "addImage"
  },
  
  initialize: function() {
    _.bindAll(this, "render");
    this.collection.bind("add", this.render);
  },
  
  addImage: function(event, ui) {
    var shot = ui.draggable.data("view").model;
    var picture = new InspireBoard.Models.Picture({
      title: shot.get('title'),
      source_url: shot.get('url'),
      thumbnail_url: shot.get('image_teaser_url'),
      image_url: shot.get('image_url'),
      width: shot.get('width'),
      height: shot.get('height')
    });
    
    picture.save();
    
    this.collection.add(picture);
    ui.draggable.hide('fade', function() {
      $(this).remove();
    });
  },
  
  render: function() {
    $(this.el).html(JST['pictures/index']());
   
    var self = this;
    $(this.el).droppable({
      accept: '.dribbble-shot'
    });
       
    var self = this;
    this.collection.each(function(picture) {
      var pictureView = new InspireBoard.Views.Picture({ model: picture });
      self.$('.media-grid').append(pictureView.render().el);
    });
    
    return this;
  }
});
