class InspireBoard.Views.DribbbleShot extends Backbone.View
  className: 'dribbble-shot'
  
  render: =>
    $(@el).data('view', this)
    $(@el).html(JST['dribbble_shots/item'](model: @model))

    $(@el).draggable(
      revert: "invalid"
    )
    
    return this