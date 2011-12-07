class InspireBoard.Views.PicturesIndex extends Backbone.View
  id: 'pictures'
  
  events:
    "drop" : "addImage"
  
  initialize: ->
    @collection.bind("add", @render)
  
  addImage: (event, ui) ->
    shot = ui.draggable.data("view").model
    picture = new InspireBoard.Models.Picture(
      title: shot.get('title')
      source_url: shot.get('url')
      thumbnail_url: shot.get('image_teaser_url')
      image_url: shot.get('image_url')
      width: shot.get('width')
      height: shot.get('height')
    )
    
    picture.save()
    @collection.add(picture)
    
    ui.draggable.hide('fade', -> $(this).remove())
    
  render: =>
    $(@el).html(JST['pictures/index']())
    
    $(@.el).droppable(
      accept: '.dribbble-shot'
    )
       
    @collection.each (picture) =>
      pictureView = new InspireBoard.Views.Picture(model: picture)
      this.$('.media-grid').append(pictureView.render().el)
    
    return this
