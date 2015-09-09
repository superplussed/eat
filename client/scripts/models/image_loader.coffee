@ImageLoader =
  deferImage: (element) ->
    img = new Image
    placehold = element.children[0]
    element.className += ' is-loading'

    img.onload = ->
      element.className = element.className.replace('is-loading', 'is-loaded')
      element.replaceChild img, placehold

    i = 0
    len = placehold.attributes.length
    while i < len
      attr = placehold.attributes[i]
      if attr.name.match(/^data-/)
        img.setAttribute attr.name.replace('data-', ''), attr.value
      i++