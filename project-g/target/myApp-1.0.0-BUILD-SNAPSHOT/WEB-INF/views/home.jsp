<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>
<html>
<head>
	<title>Home</title>
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/underscore-min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/backbone-min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/scraping.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/ajax.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>
</head>
<body>
	<div id="testResult">
	</div>
	<button id="scrapingBtn" color="red">영화 스크래핑 테스트</button>
	<script type="text/javascript">
		$("#scrapingBtn").on("click", function(){
			scraping.printScrap.printDaumScraping();
		});
		
/* 		var AppTest = Backbone.View.extend({
			el : "<div id="testApp"></div>",
			template : _.template($("#testTemplate").html()),
			events : {
				"click #callTemplateButton" : "ButtonEvent"
			},
			initialize : function() {
			},
			render : function(){
                this.$el.html(this.template);

                return this;
			},
			ButtonEvent : function(event){
				console.log("success!!");
			}
		});
		var app = new AppTest();
		app.render(); */
	</script>
</body>
</html>
