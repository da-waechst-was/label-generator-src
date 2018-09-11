
class ViewHandler
  @colors = [
    'bordeaux'
    'himbeere'
    'apricot'
  ]

  @kgas = [
    ''
    'Bornholm Eins e.V.'
    'Bornholm Zwei e.V'
  ]

  constructor: (@container) ->
    @background = $('.label-background', @container)
    @name       = $('.name', @container)
    @from       = $('.from', @container)
    @date       = $('.date', @container)
    @freeLine   = $('.free-line', @container)

    @setupForm()
    @setupColorChooser()
    @setupKGAChooser()
    @render()

  setupKGAChooser: =>
    for kga in ViewHandler.kgas
      $('#select-kga').append("<option value='#{kga}'>#{kga}</option>")

  setupColorChooser: =>
    for color in ViewHandler.colors
      $('.color-chooser').append("<li class='#{color}' data-color='#{color}'></li> ")

    $('.color-chooser li').click( (e) =>
      color = $(e.currentTarget).data('color')
      @background.prop('src', "images/labels/#{color}.jpg")
      @container.removeClass(ViewHandler.colors.join(' '))
                .addClass(color)
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
