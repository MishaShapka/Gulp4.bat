module.exports = function () {
    $.gulp.task('javascript', function() {

        return $.gulp.src('./app/src/js/**/*.js') 
            .pipe($.gulp.dest('app/dest/js'))
            .on("end", $.browsersync.reload);

	});
};