<!DOCTYPE html>
<html>

<head>

	<!-- CSS -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/form-elements.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>OPT Helper</title>
	<script>
		function getBaseUrl() {
		var re = new RegExp(/^.*\//);
		document.getElementById('baseresult').innerHTML += re
				.exec(window.location.href);
	}

	function getRootUrl() {
		document.getElementById('rootresult').innerHTML += window.location.origin ? window.location.origin
				+ '/'
				: window.location.protocol + '/' + window.location.host + '/';
	}

	function iframeDidLoad() {
		//alert('Done');
	}
	function getIndex() {
		var re = new RegExp(/^.*\//);
		document.getElementById('myFrame').src = re.exec(window.location.href)
				+ "/" + document.getElementById("mySelect").value;
	}
</script>
</head>

<body>
	<header>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Octopus</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="WelcomePage.jsp">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">contact</a></li>
					<li><a href="#">GitHub</a></li>
				</ul>
			</div>
		</nav>
		<h1>
			<strong>I-765 auto form filler</strong>
		</h1>
		<div class="container">
			<p class="lead">We will make you fill your OPT process a piece of
				cake!</p>
		</div>
		<form>
			Select your OPT Form:
			<div class="form-group">
				<select class="custom select" id="mySelect">
					<option value="InitialOptForm" selected>Initial OPT</option>
					<option value="ReplacementOPTForm">Replacement OPT</option>
					<option value="StemOPTForm">STEM OPT</option>
				</select> <br> <br> 
				<input type="button" class="btn btn-success" onclick="getIndex()" value="Go">
			</div>
		</form>
		<p id="demo"></p>
		<p id="baseresult"></p>
		<p id="rootresult"></p>

	</header>
	<div class="embed-responsive embed-responsive-21by9">
  		<iframe class="embed-responsive-item" src="..."></iframe>
	</div>
	<div class="embed-responsive embed-responsive-16by9">
		<iframe class= "embed-responsive-item"id="myFrame" src=""  style="position:absolute;  width: 100%" onLoad="iframeDidLoad();" ></iframe>
	</div>
</body>
<footer>
	<p class = "lead">
	This site is still under construction. Final site will be released soon.
	</p>
</footer>

</html>