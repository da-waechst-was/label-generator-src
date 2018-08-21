ws    = require 'easy-website-generator'
g     = ws.generator('services/bower')
bower = require 'gulp-bower'


g.generate (config, index) =>
  bower(
    cwd: "#{ws.config.basePath}/#{config.source}"
    directory: config.directory
  )
  .pipe(
    g.dest(config.target))
