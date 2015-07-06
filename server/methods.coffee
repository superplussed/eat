Meteor.methods
  rebuildSiteCollection: ->
    Site.remove({})
    _.each SiteCollection, (site) ->
      slug = site.name.toLowerCase().split(" ").join("_")
      Site.insert
        slug: slug
        name: site.name
        position: site.position
        dateRange: site.dateRange
        description: site.description
        role: site.role
        tech: site.tech