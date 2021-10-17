/**
 * 	날짜 : 2021.10.10
 *	저자 : 김희준
 *	프로그램명 : Ajax 통신
 *  설졍 : 아작스 통신 구현(아작스 통신은 데이터 가져오거나 수정....., 페이지 이동은 location.repalce()사용한다...)
 */
var common = {
	ajaxStart : function(targetUrl) {
		$.ajax({
			method: "GET",
			url: targetUrl,
			success : function(result){
				console.log(result);
			},
			error : function(result){
				alert("ERROR!! => " + result.toString());
			}
		});
	},
	
	ajaxStart : function(targetUrl, parameters) {
		$.ajax({
			method: "GET",
			url: targetUrl,
			data : parameters,
			success : function(result){
				console.log(result);
			},
			error : function(result){
				alert("ERROR!! => " + result.toString());
			}
		});
	},
	
	ajax : {
		ajaxStart : function(targetUrl) {
			return common.ajaxStart(targetUrl);
		},
		setParamsAjax : function(targetUrl, params){
			return common.ajaxStart(targetUrl, params);
		},
	},
}
