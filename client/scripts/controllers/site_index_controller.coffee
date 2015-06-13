class @IndexController extends RouteController
  data: ->
    sites: Site.find({}, {sort: {position: 1}})

  Template.index.events 
    'click .block': (evt) ->
      Router.go "/site/#{evt.currentTarget.id}"

