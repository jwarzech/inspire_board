class InspireBoard.Views.Picture extends Backbone.View
  className: 'picture'

  render: ->
    $(@el).html(JST['pictures/item'](model: @model))
    return this