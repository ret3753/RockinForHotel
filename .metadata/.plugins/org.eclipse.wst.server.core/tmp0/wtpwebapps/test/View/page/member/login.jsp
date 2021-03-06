<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%@include file="/View/page/header.jsp"%>
<%@include file="/View/page/gnb.jsp"%>
<style>
.loginBoxWrp h2 {
	max-width: 866px;
	width: 90%;
	border-bottom: 5px solid #432c10;
	padding-top: 65px;
	margin: 0 auto;
	overflow: hidden
}

.loginBoxWrp .loginTit {
	width: 467px;
	height: 47px;
	background-image: url(${imagePath}/loginTit.gif);
	background-repeat: no-repeat;
	float: left;
}

.siteMap {
	float: right;
	padding-left: 17px;
	margin-top: 10px;
	background-image: url(${imagePath}/locaton.gif);
	font-size: 11px;
	line-height: 12px;
	background-repeat: no-repeat;
	background-position: 0 1px;
	font-weight: 400
}

.siteMap span {
	color: #865009;
	text-decoration: underline
}

.loginBox {
	width: 90%;
	max-width: 600px;
	margin: 0 auto
}

.loginBox .welcome {
	width: 100%;
	height: 0;
	padding-bottom: 24%;
	background-image: url(${imagePath}/loginTop.gif);
	background-repeat: no-repeat
}

.loginBox .login {
	width: 100%;
	border-top: 3px solid #a1886f;
	background-color: #f1ebd6;
	padding-bottom: 60px
}
</style>
<div class="contentsInner loginBoxWrp">
	<h2>
		<div class="loginTit"></div>
		<div class="siteMap" action>
			&gt; <span>로그인</span>
		</div>
	</h2>
	<div class="loginBox">
		<div class="welcome"></div>
		<div class="login">
			<ul>
				<li><input type="radio" id="member" /><label for="member">회원</label></li>
				<li><input type="radio" id="nomember" /><label for="nomember">비회원(예약확인)</label></li>
			</ul>
			<ul class="selectedLogin">
				<li>
					<div>
						<form type="post">
							<div>
								<input type="text" name="memberID"
									placeholder="신라리워즈 번호 또는 아이디 입력" /> <input type="text"
									name="memberPW" placeholder="비밀번호" />
							</div>
							<a href="" class="loginBtn">로그인</a>
						</form>
					</div>
					<p>
						<input type="checkbox" /> 신라리워즈 번호 또는 아이디 저장
					</p>
					<ul>
						<li><a href="#">신라리워즈 가입</a></li>
						<li><a href="#">신라리워즈 번호 또는 아이디 찾기</a></li>
						<li><a href="#">비밀번호 찾기</a></li>
					</ul>
				</li>
				<li>
					<div>
						<form type="post">
							<div>
								<input type="text" name="memberID" placeholder="예약번호" /> <input
									type="text" name="memberPW" placeholder="FIRST NAME(이름)" /> <input
									type="text" name="memberPW" placeholder="LAST NAME(성)" />
							</div>
							<a href="" class="loginBtn">로그인</a>
						</form>
					</div>
				</li>
			</ul>
		</div>
		<p class="loginNotice">이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기
			바랍니다.</p>
		<div class="forOfflineMember">
			<p>※ 현장가입 및 기존 멤버십에서 전환하신 회원님께는 온라인 계정을 활성화 하시면 로그인 하실 수 있습니다.</p>
			<a href="#">온라인 계정 활성화</a>
		</div>
	</div>
</div>
<%@include file="/View/page/footer.jsp"%>