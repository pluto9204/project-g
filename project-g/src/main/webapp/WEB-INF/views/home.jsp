<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/underscore-min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/backbone-min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/scraping.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/ajax.js"></script>
</head>
<body>
	<div id="testResult">
	</div>
	<script type="text/template" id="testTemplate">
		<div>
			<h1>HelloWorld</h1>
			<input type="button" id="callTemplateButton" name="callTemplateButton"></input>
		</div>
	</script>
	
	<script type="text/javascript">
		scraping.printScrap.printDaumScraping();
		
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
