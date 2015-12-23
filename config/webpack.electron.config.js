var webpack = require('webpack');
module.exports = {

  entry: {
    full: './assets/index.coffee'
  },

  output: {
    path: './electron',
    publicPath: '/',
    filename: "app.js"
  },

  module: {
    loaders: [
      { test: /\.coffee$/, loader: "coffee-loader" },
      { test: /\.(png|jpg)$/, loader: "file-loader?name=images/[name].[ext]" },
      { test: /\.(md)$/, loader: "html!markdown?gfm=true" },
      { test: /\.(json)$/, loader: "json" },
      { test: /\.sass$/, loader: "style-loader!css-loader!sass?indentedSyntax" },
    ]
  },
  resolve: {
    extensions: ["", ".js", ".coffee", ".sass", ".scss", ".md"]
  },

  plugins: [
    new webpack.ProvidePlugin({
      "React": "react",
      "ReactDOM": "react-dom",
      "_": "lodash",
      "hljs": "highlight.js",
      "Bemmer": "bemmer-node/bemmer-class"
    })
  ]
}