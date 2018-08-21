# this helper will be loaded into the haml rer context for all projects
module.exports =
  copyright: (who) ->
    "© #{new Date().getFullYear()} by #{who}"
