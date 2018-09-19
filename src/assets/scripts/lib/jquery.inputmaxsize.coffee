  $.fn.inputmaxsize = ($elementToWatch, offsetWidth = 0) ->
    maxFontSize = parseInt(maxFontSize, 10)
    @each ->
      input = $(this)
      innerElement = $('span', $elementToWatch)
      parent = innerElement.parent()
      console.log parent.width(), innerElement.width()

      if parent.width() - offsetWidth < innerElement.width()
        while parent.width() - offsetWidth < innerElement.width()
          innerElement.text(innerElement.text().slice(0, -1))

        input.val(innerElement.text())
      this
