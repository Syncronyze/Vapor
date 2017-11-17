$(document).ready(function() {
		$("li.genreitem").click(function(){
		console.log("hehe xd")
		$(this).children().toggleClass("glyphicon-unchecked");
		$(this).children().toggleClass("glyphicon-check");
	});
});