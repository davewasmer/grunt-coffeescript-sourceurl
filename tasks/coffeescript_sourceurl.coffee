path = require 'path'

module.exports = (grunt) ->
  grunt.registerMultiTask 'sourceurl', 'Appends a //@ sourceURL=... comment to source files that will survive compilation and source maps', ->
    @files.forEach (file) =>
      file.src.forEach (src) =>
        sourceUrl = path.relative @data.basePath, src
        sourceUrl = "\n###\n//@ sourceURL=#{sourceUrl}\n###"
        grunt.file.write src, grunt.file.read(src) + sourceUrl