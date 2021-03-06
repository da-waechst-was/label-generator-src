  $.fn.textfill = (maxFontSize) ->
    maxFontSize = parseInt(maxFontSize, 10)
    @each ->
      ourText = $('span', this)
      parent = ourText.parent()
      maxWidth = parent.width()
      fontSize = parseInt(ourText.css('fontSize'), 10)
      multiplier = maxWidth / ourText.width()
      newSize = fontSize * (multiplier - 0.08)
      ourText.css 'fontSize', if maxFontSize > 0 and newSize > maxFontSize then maxFontSize else newSize
      this
