Router.configure
  layoutTemplate: 'defaultLayout'

Router.map ->
  @route "home",
    path: "/",
    controller: @HomeController

  @route "about",
    path: "/about",