$(document).ready(function(){
	// preloading the image
	var loadingimage = $("<img id='loading-spinner' src='/assets/loading-spinner.gif' alt='loading'>");
	$("#btn_name_search").click(function(){
		this.preventDefault();
	});
	$("#genre_list input").change(function(){
		$("#itemlist").html("<li class='col-xs-12' id='loading-li'></li>");
		$("#loading-li").append( loadingimage );
		$("#btn_genre_search").click();
	});
});