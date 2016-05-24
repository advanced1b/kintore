/*
  gulp.task('<タスク名>', function() { < タスク処理 >} )
*/

var config = require('./config');
var gulp   = require('gulp');
var del    = require('del');

gulp.task('clean', function() {
  return del(config.publicAssets);
});