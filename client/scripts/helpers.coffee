Handlebars.registerHelper 'finishedLoading', ->
  Session.get('finishedLoading')

Handlebars.registerHelper 'nextSite', (slug) ->
  console.log "next"
  "/next"

Handlebars.registerHelper 'previousSite', (slug) ->
  console.log "prev"
  "/prev"