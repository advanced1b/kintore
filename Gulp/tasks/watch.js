var config  = require('./config');
var gulp    = require('gulp');
var browserSync  = require('browser-sync') .create();

gulp.task('watch', function() {
  browserSync.init({
    proxy: 'localhost:3000'
  });

  gulp.watch(config.watch.stylesheetSass, ['compile-sass']);
  gulp.watch(config.watch.stylesheetScss, ['compile-scss']);
  gulp.watch(config.watch.javascript, ['webpack']);


  // public配下のファイルが変更された場合画面をリロードする
  gulp.watch(config.watch.browserSync).on('change', browserSync.reload);

})