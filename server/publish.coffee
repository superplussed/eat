Meteor.publish "Site", ->
  return Site.find()

Site.allow
  insert: ->
    true
  update: ->
    true
  remove: ->
    true

Meteor.publish "TechSkill", ->
  return TechSkill.find()

TechSkill.allow
  insert: ->
    true
  update: ->
    true
  remove: ->
    true