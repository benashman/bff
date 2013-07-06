$("input:text").keypress(function(e) {
    if (e.which === 13) {
        e.preventDefault();
        $("#query-form").submit();

        return false;
    }
});
