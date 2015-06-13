class @TestIndexController extends RouteController
  data: ->
    sites: Site.find({}, {sort: {position: 1}})