Router.configure
  layoutTemplate: 'defaultLayout'

Router.map ->
  @route "home",
    path: "/",

  @route "about",
    path: "/about",

  @route "site",
    path: "/site/:slug"