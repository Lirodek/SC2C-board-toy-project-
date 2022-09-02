/**
 * 
 */

function setThumbnail(event) {
	var reader = new FileReader();
	var img = document.createElement("img");
	reader.onload = function(event) {
		img.setAttribute("src", event.target.result);
		$("div#image_container").empty();

		reader.readAsDataURL(event.target.files[0]);
	};
	$("div#image_container").appendChild(img);
}
$('input[name=user_Id]').attr('value', "${user.user_Id}");
$('input[name=user_Email]').attr('value', "${user.user_Email}");
$('input[name=Name]').attr('value', "${user.name}");
function back() {
	location.href = 'admin_user_list'
}