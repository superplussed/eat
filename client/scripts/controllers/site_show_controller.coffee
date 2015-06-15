class @SiteShowController extends RouteController
  data: ->
    descriptionTemplate: "#{Router.current().params.slug}_description"
    site: Site.findOne({slug: Router.current().params.slug})
  onAfterAction: ->
    console.log "after action"
    Template.SiteShow.rendered = ->
      Zoomerang
        .config
          maxHeight: 400
          maxWidth: 400
          bgColor: '#FFF'
          bgOpacity: .95
          onOpen: (el) ->
            $(el).removeClass("contain")
          onClose: (el) ->
            console.log "close"
        .listen('.zoom')


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