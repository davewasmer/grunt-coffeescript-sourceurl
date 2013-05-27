# grunt-coffeescript-sourceurl

> Append //@ sourceURL=... to your cCoffeescript files and preserve source mapping.

## Getting Started
This plugin requires Grunt `~0.4.1`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-coffeescript-sourceurl --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-coffeescript-sourceurl');
```

## The "sourceurl" task

### Overview
In your project's Gruntfile, add a section named `sourceurl` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({
  sourceurl: {
    your_target: {
      src: 'path/to/coffee/files/**/*.coffee',
      basePath: 'path/to/coffee'  // all the sourceURLs will be relative to this directory
    },
  },
})
```

Note: if no destination is supplied, the files will be overwritten in place.

### Options

#### options.basePath
Type: `String`
Default value: `'.'`

All the sourceURLs will be relative to this directory

### Usage Examples

#### Default Options
In this example, the default options are used to do something with whatever. So if the `testing` file has the content `Testing` and the `123` file had the content `1 2 3`, the generated result would be `Testing, 1 2 3.`

```js
grunt.initConfig({
  sourceurl: {
    foo: {
      src: ['src/testing', 'src/123'],
      basePath: 'src'
    },
  },
})
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).

## Release History
_(Nothing yet)_
