Meteor.subscribe "Site"

$ ->
  WebFont.load
    typekit:
      id: "yyo6olf"
    active: ->
      Session.set('finishedLoading', true)