/**
 * 
 */
 

	var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "dpqvnzm3MglAcOkDurEC", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
				callbackUrl: "http://localhost:8080/auth/naver", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
				isPopup: false,
				callbackHandle: true
			}
		);	
	
	naverLogin.init();
	
	window.addEventListener('load', function () {
		naverLogin.getLoginStatus(function (status) {
			if (status) {
				let nick = naverLogin.user.getNickName();
				let phone = naverLogin.user.getMobile(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
	    		let name = naverLogin.user.getName();
	    		let image = naverLogin.user.getProfileImage();
	    		let email = naverLogin.user.getEmail();
	    		location.href="signup?email="+email+"&image="+image+"&name="+name+"&phone="+phone;
	    		
	            if( email == undefined || email == null) {
					alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
					console.log(naverLogin.getProfileData('mobile'))
					
					return;
				}	
			} else {
				console.log("callback 처리에 실패하였습니다.");
			}
		});
	});