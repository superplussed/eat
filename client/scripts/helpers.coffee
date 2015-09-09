Handlebars.registerHelper 'textFinishedLoading', ->
  Session.get('textFinishedLoading')

Handlebars.registerHelper 'nextSite', (slug) ->
  console.log "next"
  "/next"

Handlebars.registerHelper 'previousSite', (slug) ->
  console.log "prev"
  "/prev"

Handlebars.registerHelper 'workClass', ->
  "active" if Router.current().url != "/about"

Handlebars.registerHelper 'aboutClass', ->
  "active" if Router.current().url == "/about"
