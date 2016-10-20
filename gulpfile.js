const gulp = require('gulp');
const del = require('del');

gulp.task('clean', () => del(['public']));

gulp.task('build', ['clean'], () => {
  return gulp.src('dev/**/*')
    .pipe(gulp.dest('public'));
});

gulp.task('default', () => console.log('Run gulp build to build the project'))
