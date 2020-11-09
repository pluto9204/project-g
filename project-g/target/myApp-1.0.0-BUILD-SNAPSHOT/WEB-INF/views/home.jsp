<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="js/underscore-min.js"></script>
	<script type="text/javascript" src="js/backbone-min.js"></script>
</head>
<body>
	<script type="text/template" id="testTemplate">
		<div>
			<button id="testButton" name="testButton">TEST</button>
		</div>
	</script>
	
	<script type="javascript">
		app.test = backbone.view.extends({
			tagName : 'li',
			template : _.template($(#testTemplate).html()),
			initialize : function() {
				
			},
			render : function(){
				this.$el.html(this.template);
				return this;
			}
		});
	</script>

</body>
</html>
