class @HomeController extends RouteController
  data: ->
    allSites: Site.find({}, {sort: {position: 1}})