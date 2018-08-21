# this helper will be loaded into the haml rer context for all projects
module.exports =
  glyphicon: (which='ok') ->
    "<span class='glyphicon glyphicon-#{which}'></span>"
