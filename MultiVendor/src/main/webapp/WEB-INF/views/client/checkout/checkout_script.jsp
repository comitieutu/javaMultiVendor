<script>
    $("document").ready(function(){
        var url = $(location).attr("protocol") + "//" + $(location).attr("host");
        console.log(url + " hi");

        $("#formsubmit").on("submit", function(e) {
            e.stopImmediatePropagation();
            submitPaypal(url);
        });

    });
    function submitPaypal(url) {
        console.log("Hi paypal!!!!");

        var firstName = $('#firstName').val();
        var lastName = $('#lastName').val();
        var address = $('#address').val();
        var email = $('#email').val();
        var delivery = $('#delivery').val();

        console.log(firstName);

        console.log($('#delivery').val());
        $.ajax({
            url: url + "/checkout/savesubmitform",
            type: "GET",
            contentType : "application/json",
            data: {
                firstName: firstName,
                lastName: lastName,
                address: address,
                email: email,
                delivery: delivery
            },
            dataType: 'json',
            success: function (data) {

            }
        })
        console.log("Im here");
    }
</script>