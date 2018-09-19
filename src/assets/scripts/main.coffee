
#= include lib/config.coffee
#= include lib/view_handler.coffee

do ->
  #= include lib/jquery.textfill.coffee
  #= include lib/jquery.inputmaxsize.coffee

  new ViewHandler($('.preview-screen'))
