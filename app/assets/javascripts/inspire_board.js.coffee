window.InspireBoard =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: (pictures) ->
    userPictures = new InspireBoard.Collections.Pictures(pictures)
    dribbbleShots = new InspireBoard.Collections.DribbbleShots()
    dribbbleShots.fetch()
    new InspireBoard.Routers.Pictures(dribbbleShots, userPictures)
    Backbone.history.start()