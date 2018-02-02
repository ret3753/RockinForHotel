$(document).ready(function(){
	var bannerNum = 0;
	var hotelId;
	setInterval(function(){
		$('.mainBanner .item').eq(bannerNum).fadeOut();
		$('.mainBanner .item').eq(bannerNum).siblings().fadeIn();
		if(bannerNum == 0){
			bannerNum++;
		}else{
			bannerNum--;
		}
	},4000);
	
	$('.checkVal').each(function(e, target){
		$(this).click(function(){
			$(this).parent().siblings().find('.checkVal').removeClass('clicked');
			$(this).parent().siblings().find('.selectPop').removeClass('showNow');
			$(this).toggleClass('clicked');
			
			if(!$(this).parent().hasClass('selectDate')){
			   $(this).siblings('.selectPop').toggleClass('showNow');
			}else{
				if(!hotelId){
				   alert('호텔을 선택해주세요.');
				}else{
					var clickedTarget = $(this).hasClass('clicked');
					$('.checkCalendar').addClass('showNow');
					if(!$(this).hasClass('clicked')){
						$('.checkCalendar').removeClass('showNow');
					}
				}
			}
		});
	});
	
	$('.selectList').find('li').click(function(){
		var hotelNmae = $(this).text();
		hotelId = $(this).attr('data-hotel');
		$('.hotelName').text(hotelNmae);
		$(this).parents('.selectList').siblings('input').attr('value',hotelId);
		$(this).parents('.selectList').removeClass('showNow');
		$(this).parents('.selectList').siblings('.checkVal').removeClass('clicked');
	});
	
	var calendar = $('.calendarReserve');
	function makeCalendar(target,month,tableName){
		var dy, dm, dd, dx, dh, dmin, ds, td;
		var mm = new Array("일", "월", "화", "수", "목", "금", "토");
		var mmc = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
		var mms = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		var td = new Date();
		dy = td.getFullYear();
		dm = month-1;
		dd = td.getDate();
		dx = td.getDay();
		dh = td.getHours();
		dmin = td.getMinutes();
		ds = td.getSeconds();
		var tt = new Date(dy, dm, 1);
		var firstDay = tt.getDay();
		
		var tempHtml = '';
		
		tempHtml += "<table data-year='"+dy+"' data-month='"+month+"' class='forLayout "+tableName+"'>";
		tempHtml += "<thead><tr><td title='Sunday'>일</td><td title='Monday'>월</td><td title='Tuesday'>화</td><td title='Wednesday'>수</td><td title='Thursday'>목</td><td title='Friday'>금</td><td title='Saturday'>토</td></tr></thead><tbody><tr>";

		for(var i=0; i<firstDay; i++){
			tempHtml += "<td> </td>";
		}
		
		var loop = mms[dm];
		if(dm == 1 && ((dy % 4 == 0 && dy % 100 != 0) || dy % 400 == 0)){ // 윤달 체크 로직
			loop++;
		}

		for(var k=1 ; k<=loop ; k++){
			if(0==(i+k)%7){
				tempHtml += "<td><span>" + k + "</span></td></tr><tr>";
			}else{
				tempHtml += "<td><span>" + k + "</span></td>";
			}
		}
		tempHtml += "</tr></tbody></table>";
		
		target.append(tempHtml);
	}
	
	var d = new Date();
	var limitD = new Date();
	var nowDate = d.getDate();
	var getMonth = d.getMonth()+1;
	var year = new Date().getFullYear();
	var nextMonthCalc = d.setMonth(getMonth+1);
	var limitMonthCalc = limitD.setMonth(getMonth+10);
	var nextMonth = d.getMonth();
	var limitMonth = limitD.getMonth()+1;
	
	function createCalendar(prevM,nextM,y){
		calendar.html('');
		//var nowMonth = td.getMonth();
		makeCalendar(calendar,prevM,'prevCalendar');
		makeCalendar(calendar,nextM,'NextCalendar');
		
		$('.datePrev').find('.nowMonth').text(prevM);
		$('.dateNext').find('.nextMonth').text(nextM);
		
		$('.forLayout').each(function(){
			if($(this).hasClass('prevCalendar') && prevM == getMonth){
			   $(this).find('tbody td').each(function(){
				   var date = $(this).text();
				   if(date < nowDate){
						$(this).addClass('stateDisabled');
					}
			   });
			}
			
			var notEnoughTd = $(this).find('tr').last().find('td').length;
			var notEnoughTr = $(this).find('tr').length;
			
			if(notEnoughTd != 7){
				var howMuchNotEnough = 7 - notEnoughTd;
				for(var i =0; i < howMuchNotEnough; i++){
					$(this).find('tr').last().append('<td></td>');
				}
			}
			if(notEnoughTr < 7){
				$(this).find('tbody').append('<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>');
			}
		});
	}
	
	createCalendar(getMonth,nextMonth);
	
	var prevBtnMon, nextBtnMon;
	prevBtnMon = getMonth;
	nextBtnMon = nextMonth;
	
	$('.dateNav').children('div').click(function(){
		if(!$(this).hasClass('stateDisabled')){
		   if($(this).hasClass('datePrev')){
			   $('.dateNext').removeClass('stateDisabled');
			   if(prevBtnMon != getMonth){
					prevBtnMon--;
					nextBtnMon = calcNext(prevBtnMon-1);
				}else{
					prevBtnMon = getMonth;
					nextBtnMon = nextMonth;
					$('.datePrev').addClass('stateDisabled');
				}
			}else{
				$('.datePrev').removeClass('stateDisabled');
				if(nextBtnMon != limitMonth){
					prevBtnMon++;
					nextBtnMon = calcNext(prevBtnMon-1);
				}else{
					console.log('b');
					prevBtnMon = calcPrev(limitMonth-1);
					nextBtnMon = limitMonth;
					$('.dateNext').addClass('stateDisabled');
				}
			}
			createCalendar(prevBtnMon,nextBtnMon,year);
		}
	});
	
	function calcPrev(inputMonth){
		var n = new Date();
		var nCalc = n.setMonth(inputMonth-1);
		var nresult = n.getMonth()+1;
		return nresult;
	}
	
	function calcNext(inputMonth){
		var n = new Date();
		var nCalc = n.setMonth(inputMonth+1);
		var nresult = n.getMonth()+1;
		return nresult;
	}
	
	
	$('.calendarReserve').on('click','td',function(){
		var date = $(this).text();
		var dataMonth = $(this).parents('table').attr('data-month');
		var dataYear = $(this).parents('table').attr('data-year');
		var checkInDate = $('input[name="checkInDate"]').attr('value');
		var dateResult = dataYear+'-'+dataMonth+'-'+date;
/*			
		var checkOutDate = $('input[name="checkOutDate"]').attr('value');
*/
		
		if($(this).hasClass('stateDisabled')){
			alert('체크인이 불가능합니다.');
		}else{
			if($(this).hasClass('daySelected')){
				$(this).removeClass('daySelected');
				$('input[name="checkInDate"]').attr('value','');
				$('input[name="checkOutDate"]').attr('value','');
				$('.checkInDate').text('체크인');
				$('.checkOutDate').text('체크아웃');
			}else{
				if(checkInDate == ''){
					$(this).addClass('daySelected');
					$('input[name="checkInDate"]').attr('value',dateResult);
					$('.checkInDate').text(dateResult);
				}else{
					var checkInYear = checkInDate.split('-')[0];
					var checkInMon = checkInDate.split('-')[1];
					var checkInStart = checkInDate.split('-')[2];
					
					if(checkInYear > dataYear || checkInMon > dataMonth || (checkInMon == dataMonth && date < checkInStart)){
					   alert('체크인 날짜보다 이전 날짜를 선택할수 없습니다.');
					}else{
						if(checkInStart - date > 30){
						   alert('숙박일수는 30일 이하로 선택해 주시기 바랍니다.');
						}else{
							$('input[name="checkOutDate"]').attr('value',dateResult);
							$('.checkOutDate').text(dateResult);
							$('.checkCalendar').removeClass('showNow');
							$('.checkInDate').removeClass('clicked');
							$('.checkOutDate').addClass('clicked');
						}
					}
				}
				
			}
		}
	});
});