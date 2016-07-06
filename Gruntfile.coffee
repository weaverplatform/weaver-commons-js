module.exports = (grunt) ->

  # Load all grunt tasks
  require('load-grunt-tasks')(grunt)

  # Task configuration
  grunt.initConfig(
    clean:
      before:
        src: ['dist', 'tmp']
      after:
        src: ['dist', 'tmp']

    coffee:
      main:
        options:
          sourceRoot: ''
          sourceMap: false
        cwd: 'src/'
        src: '**/*.coffee'
        dest: 'tmp'
        expand: true
        ext: '.js'

    concat: {
      main: {
        src: ['tmp/**/*.js'],
        dest: 'dist/weaver-commons.js'
      }
    },

    browserify:
      main:
        src: 'tmp/**/*.js'
        dest: 'dist/weaver-commons.full.js'
        options:
          plugin: [
            [
              'remapify', [
                'src': '**/*.js'
                'expose': ''
                'cwd': './tmp/'
            ]
            ]
          ]

    uglify:
      build:
        src: 'dist/weaver-commons.js',
        dest: 'dist/weaver-commons.min.js'

    watch:
      options:
        spawn: false
      files: ['**/*.coffee', '!_SpecRunner.html', '!.grunt']
      tasks: ['default']
  )

  # Default task
  grunt.registerTask('default', ['clean', 'coffee', 'browserify', 'watch'])

  # Dist
  grunt.registerTask('dist', ['clean', 'coffee', 'concat', 'browserify'])

