Router.configure
  layoutTemplate: 'defaultLayout'

Router.map ->
  @route "index",
    path: "/",
    controller: @SiteIndexController,

  @route "about",
    path: "/about",

  @route "site_show",
    path: "/site/:slug",
    controller: @SiteShowController

# Router.route "/", ->
#   name: "index"
#   controller: @SiteIndexController

# Router.route "/about", ->
#   name: "about"

# Router.route "/site/:slug", ->
#   name: "site_show"
#   controller: @SiteShowController

Router.route "/rebuild", ->
  Meteor.call('rebuildSiteCollection')
  @redirect "/"