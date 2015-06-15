class @SiteShowController extends RouteController
  data: ->
    descriptionTemplate: "#{Router.current().params.slug}_description"
    site: Site.findOne({slug: Router.current().params.slug})
  onAfterAction: ->
    console.log "after action"
    initializeZoomerang = ->
      Zoomerang
        .config
          bgColor: '#FFF'
          bgOpacity: .95
        .listen('.zoom')

    setTimeout initializeZoomerang, 500
    


  Template.SiteShow.events 
    'click .next': ->
      siteCount = Site.find().count()
      nextPosition = if @site.position == siteCount then 1 else @site.position + 1
      nextSite = Site.findOne({position: nextPosition})
      Router.go("/site/#{nextSite.slug}")

    'click .prev': ->
      siteCount = Site.find().count()
      nextPosition = if @site.position == 1 then siteCount else @site.position - 1
      nextSite = Site.findOne({position: nextPosition})
      Router.go("/site/#{nextSite.slug}")

