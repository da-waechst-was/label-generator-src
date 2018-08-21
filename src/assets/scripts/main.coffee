
do ->
  $.fn.extend print: ->
    frameName = 'printIframe'
    doc = window.frames[frameName]
    if !doc
      $('<iframe>').hide().attr('name', frameName).appendTo document.body
      doc = window.frames[frameName]
      head = doc.document.head
      link = doc.document.createElement("link")
      link.type = "text/css"
      link.rel = "stylesheet"
      link.href = "styles/main.css"
      head.appendChild(link)

    doc.document.body.innerHTML = @parent().html()
    doc.window.print()
    this

  $preview = $('.preview-screen')
  $previewName     = $('.name', $preview)
  $previewSubLine  = $('.sub-line', $preview)
  $previewFreeLine = $('.free-line', $preview)

  renderPreview = ->
    $previewName.text($('#input-name').val())
    date   = 'Vom ' + $('#select-month').val() + ' ' + $('#select-year').val()
    parcel = 'Parzelle ' + $('#input-parcel').val()
    kga    = $('#select-kga').val()
    $previewSubLine.text("#{date} | #{parcel} | #{kga}")
    $previewFreeLine.text($('#input-free-text').val())


  $('#button-print').click(->
    $preview.print()
  )

  $('#input-name').keyup renderPreview
  $('#input-parcel').keyup renderPreview
  $('#input-parcel').change renderPreview
  $('#input-free-text').keyup renderPreview
  $('#select-kga').change renderPreview
  $('#select-month').change renderPreview
  $('#select-year').change renderPreview

  renderPreview()
