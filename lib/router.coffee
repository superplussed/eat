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
