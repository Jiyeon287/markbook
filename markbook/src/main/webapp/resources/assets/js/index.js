function naver_tt() {
	
	var width = 500;
	var height = 700;
	var left = (window.screen.width / 2) - (width / 2); 
	
	var url = "https://talk.naver.com/ct/w4rg90";
	var specs = "toolbar=no,scrollbars=no,resizable=no,top=50px,left="+left+",width="+width+",height="+height;
	
	window.open(url, "_blank", specs);
	
}