module.exports = function() {
    $.gulp.task("pug", function() {
        return $.gulp.src(["./app/src/pug/**/index.pug"])
            .pipe($.pug({pretty: true})
            .on( 'error', $.notify.onError( //уведомления
                {
                message: "<%= error.message %>",
                title  : "Кэп! Твой код пошел по пизде!"
                } ) )
            )
            .pipe($.gulpPugBeautify({ omit_empty: true }))
            .pipe($.replace("../app/dest/"))
            .pipe($.gulp.dest("./app/dest/"))
            .pipe($.debug({"title": "html"}))
            .on("end", $.browsersync.reload);
    });
};
