/**
 * 	날짜 : 2021.10.10
 *	저자 : 김희준
 *	프로그램명 : Ajax 통신
 */
var common = {
	ajaxStart : function(targetUrl) {
		$.ajax({
			method: "POST",
			url: targetUrl,
			success : function(result){
				return result;
			},
			error : function(result){
				alert("ERROR!! => " + result.toString());
			}
		});
	},
	
	ajaxStart : function(targetUrl, parameters) {
		$.ajax({
			method: "POST",
			url: targetUrl,
			data : parameters,
			success : function(result){
				return result;
			},
			error : function(result){
				alert("ERROR!! => " + result.toString());
			}
		});
	},
	
	ajax : {
		ajaxStart : function(targetUrl) {
			return ajaxStart(targetUrl);
		},
		setParamsAjax : function(targetUrl, params){
			return ajaxStart(targetUrl, params);
		},
	},
}
