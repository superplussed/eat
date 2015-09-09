class @IndexController extends RouteController
  data: ->
    sites: Site.find({}, {sort: {position: 1}})

  Template.index.rendered = ->
    # _.each $('.site-index .block img'), (el) ->
    #  $(el).on "load", (e) ->
    #   $(e).removeClass("hide")




  Template.index.events
    'click .block': (evt) ->
      Router.go "/site/#{evt.currentTarget.id}"

