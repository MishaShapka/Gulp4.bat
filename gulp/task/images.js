module.exports = function() {
    $.gulp.task('images', function() {

        return $.gulp.src('./app/src/img/**/*') 
            .pipe($.gulp.dest('app/dest/img'))
            .on("end", $.browsersync.reload);

	});
};