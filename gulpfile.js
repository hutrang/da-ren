var gulp = require('gulp');
var uglify = require('gulp-uglify');
var modernizr = require('gulp-modernizr');

gulp.task('modernizr', function () {
  'use strict';
  return gulp.src('source/javascripts/*.js')
    .pipe(modernizr('modernizr.min.js', {
      options: [
        'setClasses'
      ],
      tests: [
        'touchevents'
      ],
      crawl: false
    }))
    .pipe(uglify())
    .pipe(gulp.dest('source/javascripts/vendor'));
});

gulp.task('default', ['modernizr']);
