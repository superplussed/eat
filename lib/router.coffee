Router.configure
  layoutTemplate: 'defaultLayout'

Router.map ->
  @route "site_index",
    path: "/",

  @route "about",
    path: "/about",

  @route "site_show",
    path: "/site/:slug"
    controller: @SiteShowController