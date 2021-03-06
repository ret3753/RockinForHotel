<%@page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%@include file="/View/page/header.jsp"%>
<%@include file="/View/page/gnb.jsp"%>

<link href="${cssPath}/main.css" rel="stylesheet" type="text/css" />
<div class="mainBannerWrp">
	<div class="mainBanner">
		<img style="opacity: 0" src="${imagePath}/R0000000JJ8Z_KR.jpg"
			border="0" alt="" />
		<div class="item">
			<img src="${imagePath}/R0000000JJ8Z_KR.jpg" border="0" alt="" />
		</div>
		<div class="item">
			<img src="${imagePath}/R0000000JJ93_KR.jpg" border="0" alt="" />
		</div>
	</div>
	<div class="reserveSectionWrp">
		<form>
			<ul class="reserveSection">
				<li><input type="hidden" name="hotelName" value="" />
					<div class="hotelName checkVal checkBgArrow">호텔을 선택하세요.</div>
					<div class="selectList selectPop">
						<ul>
							<li data-hotel="1">서울신라호텔</li>
							<li data-hotel="2">제주신라호텔</li>
							<li data-hotel="3">신라스테이 동탄</li>
							<li data-hotel="4">신라스테이 역삼</li>
							<li data-hotel="5">신라스테이 제주</li>
							<li data-hotel="6">신라스테이 서대문</li>
							<li data-hotel="7">신라스테이 울산</li>
							<li data-hotel="8">신라스테이 마포</li>
							<li data-hotel="9">신라스테이 광화문</li>
							<li data-hotel="10">신라스테이 구로</li>
							<li data-hotel="11">신라스테이 천안</li>
							<li data-hotel="12">신라스테이 서초</li>
							<li data-hotel="13">신라스테이 해운대</li>
						</ul>
					</div></li>
				<li class="selectDate"><input type="hidden" name="checkInDate"
					value="" />
					<div class="checkInDate checkVal">체크인</div>
					<div class="checkCalendar selectPop">
						<div class="dateNav">
							<div class="datePrev stateDisabled">
								<span class="calYear">2018.</span><span class="nowMonth">1</span>
							</div>
							<div class="dateNext">
								<span class="calYear">2018.</span><span class="nextMonth">2</span>
							</div>
						</div>
						<div class="calendarReserve"></div>
					</div></li>
				<li class="selectDate"><input type="hidden" name="checkOutDate"
					value="" />
					<div class="checkOutDate checkVal">체크아웃</div></li>
				<li><input type="hidden" name="checkAdult" value="" />
					<div class="checkAdult checkVal checkBgArrow">성인</div>
					<div class="selectList selectPop">
						<ul>
							<li data-hotel="1">성인 1</li>
							<li data-hotel="2">성인 2</li>
						</ul>
					</div></li>
				<li><input type="hidden" name="checkKid" value="" />
					<div class="checkKid checkVal checkBgArrow">어린이</div>
					<div class="selectList selectPop">
						<ul>
							<li data-hotel="1">어린이 0</li>
							<li data-hotel="2">어린이 1</li>
							<li data-hotel="3">어린이 2</li>
						</ul>
					</div></li>
				<li><input type="hidden" name="checkBaby" value="" />
					<div class="checkBaby checkVal checkBgArrow">유아</div>
					<div class="selectList selectPop">
						<ul>
							<li data-hotel="1">유아 0</li>
							<li data-hotel="2">유아 1</li>
							<li data-hotel="3">유아 2</li>
						</ul>
					</div></li>
				<li><img src="${imagePath}/icoWarn.png" />
					<div class="selectPop">
						<ul>
							<li>어린이 : 37개월 이상~만 12세 이하</li>
							<li>유아 : 36개월 이하</li>
						</ul>
					</div></li>
				<a href="javascript:void(0);">검색</a>
			</ul>
		</form>
	</div>
</div>
<div class="contentsInner specialOffers">
	<h2>
		<img src="${imagePath}/specialOffer.gif" />
	</h2>
	<div class="offerBannerWrp">
		<div class="offwerBannerL">
			<a href="#"><img src="${imagePath}/R0000000JFL2_KR.jpg" /></a>
			<div>
				<a href="#"><img src="${imagePath}/R0000000JPUS_KR.jpg" /></a><a
					href="#"><img src="${imagePath}/R0000000JE9D_KR.jpg" /></a>
			</div>
		</div>
		<div class="offwerBannerR">
			<img src="${imagePath}/R0000000JPV1_KR.jpg" /><img
				src="${imagePath}/R0000000JLIL_KR.jpg" />
		</div>
	</div>
</div>
<div class="membershipArea">
	<div class="contentsInner">
		<h2>
			<img src="${imagePath}/rwTitle.gif" />
		</h2>
		<div class="memberBenefit">
			<ul>
				<li><a href="#"><img src="${imagePath}/rwDesc1.gif" /></a></li>
				<li><a href="#"><img src="${imagePath}/rwDesc2.gif" /></a></li>
				<li><a href="#"><img src="${imagePath}/rwDesc3.gif" /></a></li>
			</ul>
			<div>
				<img src="${imagePath}/rwBenefit.gif" /> <a href="#">자세히 보기 <span>&gt;</span></a>
			</div>
		</div>
		<div class="memberJoin">
			<img src="${imagePath}/rwCard.png" /> <a href="#">가입하기</a>
		</div>
	</div>
</div>
<div class="contentsInner vedioWrp">
	<h2>
		<img src="${imagePath}/enjoyTit.gif" />
	</h2>
	<div class="mediaWrp">
		<div class="mediaContents">
			<iframe
				src="https://www.youtube.com/embed/81xxCLvADlU?rel=0&showinfo=0"
				frameborder="0" webkitallowfullscreen mozallowfullscreen
				allowfullscreen></iframe>
		</div>
	</div>
</div>
<script src="${jsPath}/main.js" />
<%@include file="/View/page/footer.jsp"%>