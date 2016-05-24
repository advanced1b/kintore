var gulp = require('gulp');
var runSequence = require('run-sequence');

gulp.task('default', function() {
  runSequence(
    'clean', // まずはcleanを実行
    ['compile-sass', 'compile-scss'],
    'webpack'
  );
});