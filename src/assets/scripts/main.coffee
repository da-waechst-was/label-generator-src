
do ->
  $.fn.extend print: ->
    frameName = 'printIframe'
    doc = window.frames[frameName]
    if !doc
      $('<iframe>').hide().attr('name', frameName).appendTo document.body
      doc = window.frames[frameName]

    content = @parent().html() + '<link rel="stylesheet" href="/styles/main.css" type="text/css">'
    doc.document.body.innerHTML = content
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
  $('#input-free-text').keyup renderPreview
  $('#select-kga').change renderPreview
  $('#select-month').change renderPreview
  $('#select-year').change renderPreview

  renderPreview()
