<%@ page  contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%@include file="/View/page/header.jsp" %>
<%@include file="/View/page/gnb.jsp" %>
<style>
	.introCompany {overflow:hidden; padding-top:65px}
	.leftMenu {max-width:264px; width:100%; float:left; background-color:#f1e3c4; padding:23px}
	.leftMenu > ul > .pageName {border-bottom:5px solid #432c10; padding-bottom:14px; margin-bottom:30px}
	.leftMenu > ul > li {padding:2px 0 2px 5px; margin-bottom:24px; font-weight:bold; cursor:pointer}
	.leftMenu > ul > li.activeNow {background-color:#d3c09a}
	.leftMenu h3 {font-size:26px}
	
	.rightContents {max-width:866px; width:100%; float:right; margin-bottom:150px}
	.rightContents h4 {font-size:24px; border-bottom:5px solid #432c10; padding-bottom:12px; overflow:hidden; margin-bottom:14px}
	.rightContents h4 .sitemapNav {float:right; font-size:11px}
	.rightContents h4 .sitemapNav p span {color:#865009; text-decoration:underline}

	.rightContents .mainImgWrp {margin-bottom:14px}
	.rightContents .mainImgWrp img {width:100%}

	.rightContents h5 {font-size:24px; margin-bottom:12px; color:#3a2d24}
	.rightContents h5 + p {font-size:16px; line-height:23px; color:#454545; margin-bottom:38px}

	.forMission {overflow:hidden; margin-bottom:33px}
	.forMission > li {float:left; max-width:240px; width:33.33%; background-color:#f2e3c4; margin-right:33px; text-align:center; padding:34px}
	.forMission > li:last-child {margin-right:0}
	.forMission > li h6 {border-bottom:1px solid #c5ba9e; font-size:16px; font-weight:bold; color:#685a4d; margin-bottom:20px; padding-bottom:14px}
	.forMission > li h6 + p {line-height:23px; word-break:keep-all;}

	.weAreBest li {list-style:	disc; line-height:25px; margin-left:25px}
</style>
<script>
	$(document).ready(function(){
		$('.leftMenu li').click(function(){
			$(this).addClass('activeNow');
			$(this).siblings().removeClass('activeNow');
		});
	});
</script>
<div class="contentsInner introCompany">
	<div class="leftMenu">
		<ul>
			<li class="pageName"><h3>호텔신라 소개</h3></li>
			<li class="activeNow">개요</li>
			<li>서울신라호텔</li>
			<li>제주신라호텔</li>
			<li>신라스테이</li>
			<li>수상이력</li>
		</ul>
	</div>
	<div class="rightContents">
		<h4>
			<span>개요</span>
			<div class="sitemapNav">
				<p> &gt; Abolut The Silla &gt; <span>Overview</span></p>
			</div>
		</h4>
		<div class="mainImgWrp">
			<img src="${imagePath}/brandMainImg.jpg"/>
		</div>
		<h5>Samsung Group Affiliate</h5>
		<p>호텔신라는 수많은 국빈의 박문과 국제행사를 치러내며 '삼성 그룹을 대표하는 얼굴','한국을 대표하는 호텔'로서 자부심과 책임감을 가지고 우리나라 서비스 산업의 견인차 역할을 해오고 있습니다.</p>
		<h5>Samsung Group Affiliate</h5>
		<p>호텔신라는 수많은 국빈의 박문과 국제행사를 치러내며 '삼성 그룹을 대표하는 얼굴','한국을 대표하는 호텔'로서 자부심과 책임감을 가지고 우리나라 서비스 산업의 견인차 역할을 해오고 있습니다.</p>
		<h5>MIssoion</h5>
		<p>우리는 최고의 라이프스타일 전문가로서 더 많은 인류에게 품격과 자부심을 경험케 한다.</p>
		<ul class="forMission">
			<li>
				<h6>신라인으로서 미션</h6>
				<p>우리는 Premium Lifestye을 선도하는 신라인으로서 각각의 분야에서 최고이 전문가로 성장한다.</p>
			</li>
			<li>
				<h6>신라인으로서 미션</h6>
				<p>우리는 Premium Lifestye을 선도하는 신라인으로서 각각의 분야에서 최고이 전문가로 성장한다.</p>
			</li>
			<li>
				<h6>신라인으로서 미션</h6>
				<p>우리는 Premium Lifestye을 선도하는 신라인으로서 각각의 분야에서 최고이 전문가로 성장한다.</p>
			</li>
		</ul>
		<h5>Core Value Pride Of The Shila</h5>
		<ul class="weAreBest">
			<li>모든 사업에 최고를 지향합니다.</li>
			<li>모든 사업에 최고를 지향합니다.</li>
			<li>모든 사업에 최고를 지향합니다.</li>
			<li>모든 사업에 최고를 지향합니다.</li>
		</ul>
	</div>
</div>
<%@include file="/View/page/footer.jsp" %>