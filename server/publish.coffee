Meteor.publish "Site", ->
  return Site.find()

Site.allow
  insert: ->
    true
  update: ->
    true
  remove: ->
    true