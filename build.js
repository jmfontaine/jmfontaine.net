const layouts = require('metalsmith-layouts')
const markdown = require('metalsmith-markdown')
const metalsmith = require('metalsmith')

metalsmith(__dirname)
  .metadata({
    site: {
      title: 'Jean-Marc Fontaine'
    }
  })
  .source('./src')
  .destination('./build')
  .use(markdown())
  .use(layouts({
    default: 'layout.html',
    engine: 'ejs'
  }))
  .build(function (err) {
    if (err) {
      throw err
    }
  })
