Router.configure
  layoutTemplate: 'defaultLayout'

Router.map ->
  @route "index",
    path: "/",
    controller: @SiteIndexController,

  @route "about",
    path: "/about",

  @route "test",
    path: "/test",
    controller: @TestController,

  @route "site_show",
    path: "/site/:slug",
    controller: @SiteShowController
