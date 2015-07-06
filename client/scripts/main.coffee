Meteor.subscribe "Site"

document.title = "EATING THE .COM";

$ ->
  WebFont.load
    typekit:
      id: "yyo6olf"
    active: ->
      Session.set('finishedLoading', true)