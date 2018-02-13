
$(document).ready(function() {
	$(window).keydown(function(e) {
		if (e.which == 9) {
			if (!engCheck($('#userID').val())) {
				alert('ID는 한글로 입력해주세요1');
				return false;
			}
		}
	});

	var loginInfo = '';
	var pwPass = false;

	function engCheck(str) {
		for (i = 0; i < str.length; i++) {
			ch = escape(str.charAt(i)); //ISO-Latin-1 문자셋으로 변경
			if (strCharByte(ch) == 2) {
				return false; // 한글
			}
		}
		return true; // 영어
	}

	function strCharByte(chStr) {
		if (chStr.substring(0, 2) == '%u') {
			if (chStr.substring(2, 4) == '00')
				return 1;
			else
				return 2; //한글
		} else if (chStr.substring(0, 1) == '%') {
			if (parseInt(chStr.substring(1, 3), 16) > 127)
				return 2; //한글
			else
				return 1;
		} else {
			return 1;
		}
	}

	$('#joinForm input').each(function() {
		$(this).click(function() {
			var userID = $('#userID').val();
			if (userID != '' && $(this).attr('id') != 'userID') {
				if (!engCheck(userID)) {
					alert('ID는 한글로 입력해주세요1');
				}
			}
			$(this).val('');
		});
	});

	$('#idChck').click(function() {
		var userID = $('#userID').val();
	});

	$('#pwChck').click(function() {
		var orinPw = $('#userPw').val();
		var orinRePw = $('#userRePw').val();

		if (orinPw.length < 8) {
			alert('8자리 이상의 비밀번호를 설정해주세요.');
			return;
		}

		if (orinPw === orinRePw) {
			alert('일치합니다.');
			pwPass = true;
			$('#resultPw').val(orinPw);
		} else {
			alert('비밀번호가 일치하지 않습니다.');
		}
	});

	$('#joinSumit').click(function() {
		var memberValPass = false;
		$('#joinForm input').each(function(i) {
			var chckJoinNm = $(this).attr('id');
			var chckJoinVal = $(this).val();
			var inputValPass = false;
			if (chckJoinVal != '') {
				inputValPass = true;
			} else {
				if (chckJoinNm != 'resultPw') {
					inputValPass = false;
					if (chckJoinNm == 'userID') {
						alert('id를 입력해주세요.');
					} else {
						if (!engCheck($('#userID').val())) {
							alert('ID는 한글로 입력해주세요1');
							return false;
						}
					}
					if (chckJoinNm == 'userPw') {
						alert('페스워드를 입력해주세요.');
					} else if (chckJoinNm == 'userRePw') {
						alert('페스워드를 한번 더 입력해주세요.');
					} else if (chckJoinNm == 'userName') {
						alert('성함을 입력해주세요.');
					}
					return false;
				} else {
					alert('비밀번호 확인버튼을 눌러주세요');
					return false;
				}
			}

			if (i == $('#joinForm input').length - 1) {
				if (inputValPass == true) {
					memberValPass = true
				}
			}
		});

		if (!memberValPass) {
			return false;
		}

		if (!pwPass) {
			alert('비밀번호 확인버튼을 눌러주세요');
			return false;
		}

		loginInfo = $('#joinForm').serialize();
		alert(loginInfo);
		$.ajax({
			url : 'ajax_join.php',
			type : 'post',
			data : loginInfo,
			success : function(r) {
				if (r) {
					alert(r);
				} else {
					alert(r);
				}
			},
			error : function(r) {
				alert('통신실패 ㅠㅠ');
			}
		});
	});
});
