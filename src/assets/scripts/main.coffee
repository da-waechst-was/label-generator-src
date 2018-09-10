
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
  $previewImage    = $('.label-background', $preview)
  $previewName     = $('.name', $preview)
  $previewFrom     = $('.from', $preview)
  $previewDate     = $('.date', $preview)
  $previewFreeLine = $('.free-line', $preview)

  $('.color-chooser li').click( (e)->
    imagePath = "images/labels/#{e.currentTarget.className}.jpg"
    $previewImage.prop('src', imagePath)
    $preview.get(0).className = "preview-screen #{e.currentTarget.className}"
  )



  renderPreview = ->
    $previewName.text($('#input-name').val())
    date   = 'Vom ' + $('#select-month').val() + ' ' + $('#select-year').val()
    parcel = 'Parzelle ' + $('#input-parcel').val()
    kga    = $('#select-kga').val()
    $previewFrom.text("#{date} | #{parcel} | #{kga}")
    $previewFreeLine.text($('#input-free-text').val())


  currentYear = (new Date()).getFullYear()

  for year in [currentYear, currentYear - 1, currentYear - 2, currentYear - 3]
    $('#select-year').append($('<option>', {value: year, text: year}))

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
