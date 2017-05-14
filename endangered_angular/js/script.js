$(document).ready(function(){
console.log("javascript hooked up")
// $("body").css("background-color", "red")
//^this works but vthis doesn't - it won't target the tags from the partial views
var specieListing = $(".specie-listing");
specieListing.hide();

$(".specie-icon").on("hover", (
	specieListing.show()));

});