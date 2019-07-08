$(document).ready(function () {
    var url = $(location).attr("protocol") + "//" + $(location).attr("host");
    $("#btnlogin").click(function (e) {
        e.stopImmediatePropagation();
        $.ajax(
            {
                url: url + "/auth/process-login",
                type: 'GET',
                dataType: 'json',
                data:
                {
                    username:  $('#inputacname').text(),
                    password: 1,
                },
                success: function (data) {
                }
            });
    });
    $(".btnregister").click(function (e) {
        e.stopImmediatePropagation();
        $.ajax(
            {
                url: url + "/auth/register",
                type: 'POST',
                dataType: 'json',
                data:
                {
                    username: id,
                    password: 1,
                },
                success: function (data) {
                    $('#' + id).text(data.Quantity);
                    $('#price' + id).text(data.Price);
                    $('#cartPrice' + id).val(data.Price / data.Quantity);
                    $('#cartQty' + id).val(data.Quantity);
                }
            });
    });
});