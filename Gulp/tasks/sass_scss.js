var config = require('./config');
var gulp   = require('gulp');
var sass   = require('gulp-sass');
// ビルドで作られたファイルには.bundleをつけるようにして, びるどされたかどうかをわかりやすくする
var rename = require('gulp-rename');
// ダイジェストを追加
var rev    = require('gulp-rev');
var minifyCss = require('gulp-minify-css');
var plumber = require('gulp-plumber');
//　スタイルガイド
// var hologram = require('gulp-hologram');
// var connect  = require('gulp-connect');

// sassコンパイル
// @note indentedSyntax: true にしないとコンパイルできない
gulp.task('compile-sass', function() {
  return gulp.src(config.stylesheet.srcSass)
      .pipe(plumber({
        errorHandler: function(error) {
          console.log('[ERROR]' + ' ' + error.message)
          this.emit('end')
        }
      }))
      .pipe(sass({ indentedSyntax: true, errLogToConsole: true }))
      .pipe(minifyCss())
      .pipe(rename({ suffix: '.bundle' }))
      .pipe(rev())
      .pipe(gulp.dest(config.stylesheet.dest))
      .pipe(rev.manifest(config.rev.dest, config.rev.opts))
      .pipe(gulp.dest(config.publicAssets));
});

// scssコンパイル
// @note indentedSyntax: false にしないとコンパイルできない
gulp.task('compile-scss', function() {
  return gulp.src(config.stylesheet.srcScss)
      .pipe(plumber({ //sassコンパイル前に実行しないと止まってしまう
        errorHandler: function(error) {
          console.log('[ERROR]' + ' ' + error.message)
          this.emit('end')
        }
      }))
      .pipe(sass({
        indentedSyntax: false,
        errLogToConsole: true,
        includePaths: require('node-normalize-scss').includePaths
      }))
      .pipe(plumber())
      .pipe(minifyCss())
      .pipe(rename({ suffix: '.bundle' }))
      .pipe(rev())
      .pipe(gulp.dest(config.stylesheet.dest))
      .pipe(rev.manifest(config.rev.dest, config.rev.opts))
      .pipe(gulp.dest(config.publicAssets));
});

// スタイルガイド自動生成
// gulp.task('hologram', function() {
//   return gulp.src('../hologram_config.yml')
//       .pipe(hologram())
// })
// gulp.task('connect', function() {
//   return connect.server({
//     port: 8080,
//     root: "docs",
//     livereload: true
//   })
// })