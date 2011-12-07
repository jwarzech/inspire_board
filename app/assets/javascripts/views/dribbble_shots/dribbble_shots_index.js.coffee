class InspireBoard.Views.DribbbleShotsIndex extends Backbone.View
  initialize: ->
    @collection.bind("reset", @render)
  
  render: =>
    $(@el).html(JST['dribbble_shots/index']())
       
    @collection.each (shot) =>
      dribbbleShotView = new InspireBoard.Views.DribbbleShot(model: shot)
      this.$('.media-grid').append(dribbbleShotView.render().el)

    return this
