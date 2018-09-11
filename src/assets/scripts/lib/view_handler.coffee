class ViewHandler
  constructor: (@container) ->
    @background = $('.label-background', @container)
    @name       = $('.name', @container)
    @from       = $('.from', @container)
    @date       = $('.date', @container)
    @freeLine   = $('.free-line', @container)

    @setupForm()
    @setupColorChooser()
    @render()

  setupColorChooser: =>
    $('.color-chooser li').click( (e) =>
      imagePath = "images/labels/#{e.currentTarget.className}.jpg"
      @background.prop('src', imagePath)
      @container.get(0).className = "preview-screen #{e.currentTarget.className}"
    )

  setupForm: =>
    currentYear = (new Date()).getFullYear()
    for year in [currentYear, currentYear - 1, currentYear - 2, currentYear - 3]
      $('#select-year').append($('<option>', {value: year, text: year}))

    $('#input-name').keyup @render
    $('#input-parcel').keyup @render
    $('#input-parcel').change @render
    $('#input-free-text').keyup @render
    $('#select-kga').change @render
    $('#select-month').change @render
    $('#select-year').change @render

    $('#button-print').click( =>
      @container.print("styles/main.css")
    )

  render: =>
    @name.text($('#input-name').val())

    date   = 'Vom ' + $('#select-month').val() + ' ' + $('#select-year').val()
    @date.text(date)

    parcel = 'Parzelle ' + $('#input-parcel').val()
    kga    = $('#select-kga').val()
    @from.text("#{parcel} | #{kga}")
    
    @freeLine.text($('#input-free-text').val())
