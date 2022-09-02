/**
 * 
 */
var nameCheck = document.getElementById("name");
var idCheck = document.getElementById("id");
var password = document.getElementById("password");
var phoneCheck = document.getElementById("email");
var submitButton = document.getElementById("submitButton");

var labelId = document.getElementById("label_id");
var labelName = document.getElementById("label_name");
var labelPw = document.getElementById("label_password");

var regexp_postalcode = /(?:\b\d)|(?:\@|\$|\:|\#|\!|\%|\^|\&|\*|\(|\)|\-|\_|\=|\+)|([ㄱ-ㅎ|ㅏ-ㅣ|가-힣])/;
var regexp_Special_Characters = /\`|\!|\@|\#|\$|\%|\^|\&|\*|\(|\)|\_|\+|\-|\+|\=|\{|\}|\?|\/|\<|\>|\,|\./
var regexp_name = /[가-힣]{2,}|[a-zA-Z0-9]{2,}/

var id_check_type = false;
var name_check_type = false;
var password_check_type = false;
let fileInput = $('#file');

function idchecking() {
	if (regexp_postalcode.test(idCheck.value)) {
		labelId.style.color = "red"
		labelId.innerText = "올바르지 못한 아이디 입니다";
		id_check_type = false;
	} else {
		if (idCheck.value == "") {
			labelId.style.color = "red"
			labelId.innerText = "아이디를 입력해주세요";
			id_check_type = false;
		} else {
			fn_idChk();
		}
	}
}
function fn_idChk() {
	$.ajax({
		url: "/idChk",
		type: "post",
		dataType: "json",
		data: {
			"user_Id": $("#id").val()
		},
		success: function(data) {
			if (data == 1) {
				labelId.style.color = "red"
				labelId.innerText = "중복된 아이디입니다";
				id_check_type = false;
			} else if (data == 0) {

				labelId.style.color = "green"
				labelId.innerText = "올바른 아이디 입니다";
				id_check_type = true;
			}
		}
	});
}
function nameChecked() {
	if (nameCheck.value.length > 1 && nameCheck.value.length > 10) {
		labelName.style.color = "red"
		labelName.innerText = "닉네임은 1자리보다 크고 10자리보다 작아야합니다"
	} else {
		if (regexp_name.test(nameCheck.value)) {
			if (regexp_Special_Characters.test(nameCheck.value)) {
				labelName.style.color = "red"
				labelName.innerText = "특수문자가 닉네임에 들어가서는 안됩니다"
				name_check_type = false;
			} else {
				labelName.style.color = "green"
				labelName.innerText = "사용가능한 닉네임입니다"
				name_check_type = true;
			}
		} else {
			labelName.style.color = "red"
			labelName.innerText = "올바르지 않은 닉네임입니다"
			name_check_type = false;
		}
	}
}

function passwordChecked() {
	console.log(password.value.length)
	if (password.value.length > 7 && password.value.length < 18) {
		labelPw.style.color = "green"
		labelPw.innerText = "사용 가능한 비밀번호 입니다"
		password_check_type = true;
	} else {

		labelPw.style.color = "red"
		labelPw.innerText = "패스워드는 7보다 크고 18보단 작아야합니다"
		password_check_type = false;
	}
}

function submitBtn() {
	if (id_check_type) {
		if (name_check_type) {
			if (password_check_type || name_check_type || id_check_type) {
				submitButton.type = "submit"
				submitButton.submit();

			} else {
				alert("올바른 비밀번호를 입력해주세요");
			}
		} else {
			alert("올바른 닉네임를 입력해주세요");
		}
	} else {
		alert("올바른 아이디 입력해주세요");
	}
}
let change = 0;
function setThumbnail(event) {
	$("image").remove();
	var reader = new FileReader();

	reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.setAttribute("class", "imgView");

		if (change == 0) {
			document.querySelector("div#image_container").appendChild(img);
			change++;
		} else {
			$("div#image_container").empty();
			document.querySelector("div#image_container").appendChild(img);
		}
		change++;
	};

	reader.readAsDataURL(event.target.files[0]);

}