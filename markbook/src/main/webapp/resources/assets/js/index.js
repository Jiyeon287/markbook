function width_calc(width) {
		
	return (window.screen.width / 2) - (width / 2);
}

function naver_tt() {
	
	var width = 500;
	var height = 700;
	var left = width_calc(width);
	
	var url = "https://talk.naver.com/ct/w4rg90";
	var specs = "toolbar=no,scrollbars=no,resizable=no,top=50px,left="+left+",width="+width+",height="+height;
	
	window.open(url, "_blank", specs);
	
}

function cal_open() {
	
	var width = 1080;
	var height = 880;
	var left = width_calc(width);
	
	var specs = "toolbar=no,scrollbars=no,resizable=no,top=50px,left="+left+",width="+width+",height="+height;
	
	window.open("/markbook/mk_calendar/calendar", "_blank", specs);
}