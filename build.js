const markdown = require('metalsmith-markdown')
const metalsmith = require('metalsmith')

metalsmith(__dirname)
  .source('./src')
  .destination('./build')
  .use(markdown())
  .build(function (err) {
    if (err) {
      throw err
    }
  })
