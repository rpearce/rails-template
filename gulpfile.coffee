gulp = require 'gulp'
browserify = require 'browserify'
source = require 'vinyl-source-stream'

paths =
  components: 'app/assets/javascripts/src/components/**/*.coffee'

gulp.task 'compile-components', ->
  browserify(entries: ['./app/assets/javascripts/src/components/components.coffee'], extensions: ['.coffee'])
    .bundle()
    .pipe source('components.js')
    .pipe gulp.dest('app/assets/javascripts/build')

gulp.task 'watch', ['compile-components'], ->
  gulp.watch(paths.components, ['compile-components'])

gulp.task 'default', ['watch', 'compile-components']
