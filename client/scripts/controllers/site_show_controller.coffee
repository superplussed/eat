class @SiteShowController extends RouteController
  data: ->
    descriptionTemplate: "#{Router.current().params.slug}_description"
    site: Site.findOne({slug: Router.current().params.slug})

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

  Template.SiteShow.rendered = ->
    console.log "here"
    Zoomerang
      .config
        maxHeight: 400
        maxWidth: 400
        bgColor: '#000'
        bgOpacity: .85
      .listen('.zoom')