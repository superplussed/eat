Meteor.subscribe "Site"
Meteor.subscribe "TechSkill"

$ ->
  WebFont.load
    typekit:
      id: "yyo6olf"
    active: ->
      Session.set('finishedLoading', true)