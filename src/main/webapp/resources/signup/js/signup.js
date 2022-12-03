/**
 * 
 */
var regexp_postalcode = /(?:\b\d)|(?:\@|\$|\:|\#|\!|\%|\^|\&|\*|\(|\)|\-|\=|\+)|([ㄱ-ㅎ|ㅏ-ㅣ|가-힣])/;
var regexp_name = /[가-힣]{2,}|[a-zA-Z0-9]{2,}|_/;

var id_check_type = false;
var name_check_type = false;
var password_check_type = false;
var password_checkCon_type = false;

var form = $('#myform');
var id = $("#user_id");
var pw = $('#user_pw');
var pwc = $('#confirm');
var nick_name = $("#nick_name");

var label_idname = document.getElementById("label_id");
var label_pw = document.getElementById("label_PW");
var label_pwc =document.getElementById("label_PWC");
var label_nick = document.getElementById("label_Nick");

function test() {
	console.log(id_check_type + "" + name_check_type + "" + password_check_type + "" + password_checkCon_type);
	if(id_check_type){
		if(name_check_type){
			if(password_check_type){
				if(password_checkCon_type){
					form.submit();
				}else {
					alert("비밀번호확인을 확인해주세요");
				}
			} else {
				alert('비밀번호를 확인해주세요');
			}
		} else {
			alert('닉네임을 확인해주세요');
		}
	}else{
		alert('아이디를 확인해주세요');
	}
	
}
function nickCheck(){
	if(nick_name.val() == ""){
		label_nick.style.color = "red"
		label_nick.innerText = "닉네임을 입력해주세요.";
		password_checkCon_type = false;
	} else if(!(regexp_name.test(nick_name.val()))){
		label_nick.style.color = "red"
		label_nick.innerText = "특수문자는 _만 됩니다.";
		password_checkCon_type = false;
	} else {
		fn_nickCheck();
	}
}

/**
 	비밀번호 확인
 */
function pwConCheck(){
	if(pwc.val() != pw.val()){
		label_pwc.style.color = "red"
		label_pwc.innerText = "패스워드가 일치하지 않아요!";
		password_checkCon_type = false;
	} else {
		label_pwc.style.color = "red"
		label_pwc.innerText = " ";
		password_checkCon_type = true;
	}
}
/**
 *	페스워드 체크, 자리수, 특수문자 여부
 */
function pwCheck(){
	if (pw.val().length == "") {
			label_pw.style.color = "red"
			label_pw.innerText = "패스워드를 입력해주세요";
			password_check_type = false;
	} else if(pw.val().length <8){
			label_pw.style.color = "red"
			label_pw.innerText = "8글자 이상으로 지어주세요";
			password_check_type = false;
	} else if (!(regexp_postalcode.test(pw.val()))) {
		label_pw.style.color = "red"
		label_pw.innerText = "특수문자를 포함해주세요";
		password_check_type = false;
	} else {
		label_pw.style.color = "green"
		label_pw.innerText = " ";
		password_check_type = true;
	}
}
/**
 *	아이디체크 중복, 유효성검사
 */
function idCheck(){
	if (regexp_postalcode.test(id.val())) {
		label_idname.style.color = "red"
		label_idname.innerText = "올바르지 못한 아이디 입니다";
		id_check_type = false;
	} else {
		if (id.val() == "") {
			label_idname.style.color = "red"
			label_idname.innerText = "아이디를 입력해주세요";
			id_check_type = false;
		} else if(id.val().length <6){
			label_idname.style.color = "red"
			label_idname.innerText = "6글자 이상으로 지어주세요";
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
			"user_idname": id.val()
		},
		success: function(data) {
			if (data == 1) {
				label_idname.style.color = "red"
				label_idname.innerText = "중복된 아이디입니다";
				id_check_type = false;
			} else if (data == 0) {

				label_idname.style.color = "green"
				label_idname.innerText = "사용 가능한 아이디입니다.";
				id_check_type = true;
				console.log(id_check_type);
			}
		}
	});
}

function fn_nickCheck() {
	$.ajax({
		url: "/nicknameChk",
		type: "post",
		dataType: "json",
		data: {
			"user_nickName": nick_name.val()
		},
		success: function(data) {
			if (data == 1) {
				label_nick.style.color = "red"
				label_nick.innerText = "중복된 닉네임 입니다";
				name_check_type = false;
			} else if (data == 0) {

				label_nick.style.color = "green"
				label_nick.innerText = "사용 가능한 닉네임입니다.";
				name_check_type = true;
			}
		}
	});
}