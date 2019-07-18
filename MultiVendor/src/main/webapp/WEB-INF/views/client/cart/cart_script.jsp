<script>
	$("document").ready(function(){	
		var url = $(location).attr("protocol") + "//" + $(location).attr("host");		
	    $("input[type='number']").on("input", function (e) {
	        e.stopImmediatePropagation();
	        var id = $(this).data('id');
	        $.ajax(
	            {
	                url: url + "/api/cart/change",
	                type: 'GET',
	                dataType: 'json',
	                data:
	                {
	                    id:  id,
	                    qty: $(this).val(),
	                },
	                success: function (data) {
		                $('#carttotal').text(data.carttotal);
		                $('#subtotal_' + id).text(data.subtotal);
	                }
	            });
	    });
	});
</script> 