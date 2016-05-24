var config = require('./config');
var path = require('path');
var webpack = require("webpack");


module.exports = {
  // エントリファイルを記載
  entry: {
    front: './' + config.gulpAssets + '/javascripts/front'
  },
  // 出力先を記載 filenameで作成されたファイルを指定
  output: {
    filename: '[name].bundle.js',
    publicPath: config.javascript.dest
  },
  // 対象ファイル(extension: 拡張子を指定)
  resolve: {
    // 探索するモジュール用ディレクトリを指定。デフォルトではbower_componentsは入っていない。
    modulesDirectories: ["web_modules", "node_modules", "bower_components"],
    // jsxを省略可能にする
    extensions: ['', '.js', '.jsx']
  },
  // babelをloaderとすることでes6をjsに変換できる
  // 他loaderによるcoffeeなどのファイルをjsに変換できる
  module: {
    loaders: [
      { test: /\.js?$/, loader: 'babel?presets[]=es2015' }
    ]
  },
  plugins: [
    // bowerrのモジュールを読めるようにするためyomeruyounisurutame
    new webpack.ResolverPlugin(
      new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin("bower.json", ["main"])
    )
  ]
};
