Router.configure
  layoutTemplate: 'defaultLayout'

Router.map ->
  @route "TestIndex",
    path: "/",
    controller: @TestIndexController,

  @route "about",
    path: "/about",

  @route "site_show",
    path: "/site/:slug",
    controller: @SiteShowController
