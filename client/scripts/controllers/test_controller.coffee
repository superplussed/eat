class @TestController extends RouteController

  Template.test.rendered = ->
    console.log "here"
    Zoomerang
      .config
        maxHeight: 600
        maxWidth: 600
        bgColor: '#FFF'
        bgOpacity: .85
      .listen('.zoom')