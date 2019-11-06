process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')
const BrowserSyncPlugin = require('browser-sync-webpack-plugin')

environment.plugins.append('BrowserSyncWebpack', new BrowserSyncPlugin(
    // BrowserSync options
    {
        // browse to http://localhost:3000/ during development
        host: '192.168.30.33',
        open: false,
        port: 3005,
        files: ['./app/controllers/**/*.rb', './app/models/**/*.rb','./app/views/**/*.erb','./public/**/*.html' ],
        watchOptions: {
            usePolling: true,
            interval: 300
        },


        // proxy the Webpack Dev Server endpoint
        // (which should be serving on http://localhost:3100/)
        // through BrowserSync
        proxy:'http://localhost:3000/',
    },
    // plugin options
    {
        // prevent BrowserSync from reloading the page
        // and let Webpack Dev Server take care of this
        reload: false
    }
))
// console.log(environment.plugins.get('BrowserSyncWebpack'))
webpackcofig = environment.toWebpackConfig()
console.log(webpackcofig.plugins[webpackcofig.plugins.length - 1])
module.exports = webpackcofig
