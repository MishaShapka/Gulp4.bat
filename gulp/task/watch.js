//Таск для отслеживания изменений в файлах и запуске при необходимости нужных тасков.

module.exports = function() {
    $.gulp.task("watch", function() {
        return new Promise((res, rej) => {
            $.watch(["./app/src/pug/**/index.pug", "!./src/views/blocks/*.pug"], $.gulp.series("pug"));
            $.watch("./app/src/sass/**/main.sass", $.gulp.series("sass"));
            $.watch(["./app/src/img/**/*.{jpg,jpeg,png,gif}" ], $.gulp.series("images"));
            $.watch("./app/src/js/**/*.js", $.gulp.series("javascript"));
            res();
        });
    });
};