class InspireBoard.Routers.Pictures extends Backbone.Router
  routes:
    "" : "index"
    "popular" : "popular"
    
  initialize: (dribbbleShots, userPictures) ->
    @dribbbleShots = dribbbleShots
    @userPictures = userPictures
    
    view = new InspireBoard.Views.PicturesIndex(collection: this.userPictures)
    $('.content').html(view.render().el)
  
  index: ->
    this.popular()
  
  popular: ->
    view = new InspireBoard.Views.DribbbleShotsIndex(collection: this.dribbbleShots)
    $('.sidebar').html(view.render().el)