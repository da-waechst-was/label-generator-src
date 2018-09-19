
class ViewHandler
  constructor: (@container) ->
    @background = $('.label-background', @container)
    @name       = $('.name', @container)
    @from       = $('.from', @container)
    @date       = $('.date', @container)
    @freeLine   = $('.free-line', @container)

    @setupForm()
    @setupColorChooser()
    @setupUnionChooser()
    @render()

  setupUnionChooser: =>
    for unionName, unionConfig of Config.unions
      $('#select-union').append("<option value='#{unionName}'>#{unionName}</option>")

    for kga in Config.unions['Bezirksverband Prenzlauer Berg']
      $('#select-kga').append("<option value='#{kga}'>#{kga}</option>")

    $($('#select-kga').find('option').get(1)).attr('selected','selected')

  updateKgas: =>
    $('#select-kga').find('option').remove()

    current = $('#select-union').val()
    for kga in Config.unions[current]
      $('#select-kga').append("<option value='#{kga}'>#{kga}</option>")

    $($('#select-kga').find('option').get(1)).attr('selected','selected')

    @render()

  updateParcel: =>
    if $('#select-kga').val()
      $('#input-parcel').removeAttr('disabled')
                        .css('text-indent', '0px')
    else
      $('#input-parcel').attr('disabled', 'disabled')
                        .css('text-indent', '-100000px')

    @render()

  setupColorChooser: =>
    firstClass = 'active'
    for color in Config.colors
      $('.color-chooser').append("<li class='#{color} #{firstClass}' data-color='#{color}'></li> ")
      firstClass = ''

    $('.color-chooser li').click( (e) =>
      $('.color-chooser li').removeClass('active')
      color = $(e.currentTarget).addClass('active').data('color')
      @background.prop('src', "images/labels/#{color}.jpg")
      @container.removeClass(Config.colors.join(' '))
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
    $('#select-kga').change @updateParcel
    $('#select-union').change @updateKgas
    $('#select-month').change @render
    $('#select-year').change @render

    $('#button-print').click( =>
      doc = window.frames['printIframe']
      content = @container.parent().html()
      doc.document.body.innerHTML = content + content + content + content + content + content + content + content + content + content

      # $(window.frames['printIframe']).ready( ->
      #   doc.window.print()
      # )
      setTimeout(
        ->
          window.frames['printIframe'].window.print()
        , 200
      )
    )

  updateIframeContent: =>
    doc = window.frames['printIframe']
    return unless doc
    content = @container.parent().html()
    doc.document.body.innerHTML = content + content + content + content + content + content + content + content + content + content

  render: =>
    @name.text($('#input-name').val())

    date   = 'vom ' + $('#select-month').val() + ' ' + $('#select-year').val()
    @date.text(date)

    parcel = $('#input-parcel').val()
    kga    = $('#select-kga').val()
    union  = $('#select-union').val()

    if !kga
      from = "<div class='union single'>Aus dem #{union}</div>"
    else
      from = "<div class='union'>Aus dem #{union}</div>"
      parcel = "Parzelle #{parcel}" if parcel
      from = from + [parcel, kga].filter((e) -> e).join(' - ')

    @from.html(from)

    @freeLine.text($('#input-free-text').val())

    @updateIframeContent()
