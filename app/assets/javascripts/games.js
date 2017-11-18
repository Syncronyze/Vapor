$(document).ready(function(){
	$("#genre_list input").change(function(){
		$("#itemlist").html("<li>"+
								"<img src='/assets/loading-spinner.gif' alt='loading'>"+
							"</li>");
		$("#genre_list").submit();
	});
});