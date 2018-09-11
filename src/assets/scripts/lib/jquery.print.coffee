do ->
  $.fn.extend print: (styleFile)->
    frameName = 'printIframe'
    doc = window.frames[frameName]
    if !doc
      $('<iframe>').hide().attr('name', frameName).appendTo document.body
      doc = window.frames[frameName]
      head = doc.document.head
      link = doc.document.createElement("link")
      link.type = "text/css"
      link.rel = "stylesheet"
      link.href = styleFile
      head.appendChild(link)

    doc.document.body.innerHTML = @parent().html()
    doc.window.print()
    this
