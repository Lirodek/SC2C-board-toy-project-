/**
 * 
 */
var idCheck = document.getElementById("id");
var phoneCheck = document.getElementById("email");
var confirm = document.getElementById("confirm");
var submitButton = document.getElementById("submitButton");

var labelId = document.getElementById("label_id");
var labelEmail = document.getElementById("label_email");
var labelConfirm = document.getElementById("label_confilrm");

var count=0;


var regexp_postalcode = /(?:\b\d)|(?:\@|\$|\:|\#|\!|\%|\^|\&|\*|\(|\)|\-|\_|\=|\+)|([ㄱ-ㅎ|ㅏ-ㅣ|가-힣])/;
var regexp_Special_Characters = /\`|\!|\@|\#|\$|\%|\^|\&|\*|\(|\)|\_|\+|\-|\+|\=|\{|\}|\?|\/|\<|\>|\,|\./
var regexp_name = /[가-힣]{2,}|[a-zA-Z0-9]{2,}/

var id_check_type = false;
var email_check_type = false;
var confirm_check_type = false;

function idchecking() {
	if (regexp_postalcode.test(idCheck.value)) {
		labelId.style.color = "red"
		labelId.innerText = "올바르지 못한 아이디 입니다";
		id_check_type = false;
	} else {
		console.log(idCheck.value == "")
		if (idCheck.value == "") {
			labelId.style.color = "red"
			labelId.innerText = "아이디를 입력해주세요";
			id_check_type = false;
		} else {
			labelId.style.color = "green"
			labelId.innerText = "Successful";
			id_check_type = true;
		}
	}
}

function fn_idChk() {
	$.ajax({
		url: "/emailSend",
		type: "post",
		dataType: "json",
		data: {
			"user_Id": $("#id").val(),
			"user_Email": $("#email").val()
		},
		success: function(data) {
			if (data == 0) {
				labelEmail.style.color = "red"
				labelEmail.innerText = "매치되지 않는 이메일 입니다.";
				email_check_type = false;
			} else if (data == 1) {
				phoneCheck.readonly = "true"
				labelEmail.style.color = "green"
				labelEmail.innerText = "이메일을 확인해주세요";
				email_check_type = true;
			}
		}
	})
}

function fn_emailChk() {
	$.ajax({
		url: "/emailChkConfirm",
		type: "post",
		dataType: "json",
		data: {
			"user_Id": $("#confirm").val(),
		},
		success: function(data) {
			if (data == 0) {
				count+=1;
				labelConfirm.style.color = "red"
				labelConfirm.innerText = "틀렸습니다."+(5-count)+"회 남았어요"
				confirm_check_type = false;
			} else if (data == 1) {
				labelConfirm.style.color = "green"
				labelConfirm.innerText = "확인되었습니다."
				confirm_check_type = true;
			}
		}
	})
}

function fn_endGame(){
	if(id_check_type || confirm_check_type || email_check_type){
		submitButton.type="submit"
		submitButton.submit();
	}
}
