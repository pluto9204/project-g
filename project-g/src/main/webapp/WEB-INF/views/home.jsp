<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>
<html>
<head>
	<title>Home</title>
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/baseSource/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/baseSource/underscore-min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/baseSource/backbone-min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/module/scraping.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/module/ajax.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>
</head>
<body>
	<div id="testResult">
	</div>
	<button id="loginBtn" color="red">로그인</button>
	<button id="regUserBtn" color="green">회원가입</button>
	<script type="text/javascript">
		var Cpath = "<%=request.getContextPath() %>";
		$("#loginBtn").on("click", function(){
			var url = Cpath + "/loginUser";
			location.replace(url);
			//common.ajax.ajaxStart("loginUser");
		});
		
		$("#regUserBtn").on("click", function(){
			var url = Cpath + "/registUser";
			location.replace(url);
			//common.ajax.ajaxStart("registUser");
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
