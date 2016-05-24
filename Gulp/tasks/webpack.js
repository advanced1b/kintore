var config  = require('./config');
var gulp    = require('gulp');
var webpack = require('gulp-webpack');
var webpackConfig = require('./webpack.config.js');
var rev = require('gulp-rev');
// js用のミニファイ
var uglify  = require('gulp-uglify');
var plumber = require('gulp-plumber');


gulp.task('webpack', function() {
  return gulp.src(config.javascript.src)
      .pipe(webpack(webpackConfig)) // webpackの設定に従ってビルド
      .pipe(plumber())
      .pipe(uglify())
      .pipe(rev())
      .pipe(gulp.dest(webpackConfig.output.publicPath)) // jsファイルの出力先
      .pipe(rev.manifest(config.rev.dest, config.rev.opts)) // manifestの設定
      .pipe(gulp.dest(config.publicAssets)) // manifesetのファイル出力先
})