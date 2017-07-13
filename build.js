const metalsmith = require('metalsmith')

metalsmith(__dirname)
  .source('./src')
  .destination('./build')
  .build(function (err) {
    if (err) {
      throw err
    }
  })
