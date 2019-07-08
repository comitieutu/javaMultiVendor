<script>
	$("document").ready(function(){	
	    $("#fileImage").on("change", function() {
	        if (countFile ()) {
	        	$("#btnSubmit").removeAttr("disabled");
	        } else {
	        	$("#btnSubmit").attr('disabled', 'disabled');
	        }
	    });
	});
	
	function countFile () {
		var files = $("#fileImage").get(0).files;
		return files.length == 0 ? false : true;
	}	
</script> 