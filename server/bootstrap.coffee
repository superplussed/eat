Meteor.startup(->
  if Site.find().count() == 0
    Meteor.call('rebuildSiteCollection')
)

