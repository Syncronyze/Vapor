var loadingimage;
$(document).ready(function(){
	// preloading the image
	loadingimage = $("<img id='loading-spinner' src='/assets/loading-spinner.gif' alt='loading'>");
	$("#btn_name_search").click(function(event){
		event.preventDefault();
		search();
	});

	$("#genre_list input").change(function(){
		search();
	});
});

function search(){
	$("#itemlist").html("<li class='col-xs-12' id='loading-li'></li>");
	$("#hidden_search_box").val($("#search").val());
	$("#loading-li").append( loadingimage );
	$("#btn_genre_search").click();
}