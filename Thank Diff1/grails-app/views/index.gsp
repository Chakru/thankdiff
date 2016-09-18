<!DOCTYPE html>
<html ng-app="app">
<head>
	<meta charset="utf-8" />
	<title>ThankDiff Login|Register</title>

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="shortcut icon" href="http://www.harman.in/wp-content/themes/harmanindia/favicon.ico" >
	<link href="css/app.css" rel="stylesheet" />


	<script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.20/angular.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.20/angular-route.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.20/angular-cookies.js"></script>

	<script src="app.js"></script>
	<script src="js/authentication.service.js"></script>
	<script src="js/user.service.js"></script>
	<script src="js/flash.service.js"></script>

	%{--<script src="js/home.controller.js"></script>--}%
	<script src="js/login.controller.js"></script>
	%{--<script src="register/register.controller.js"></script>
--}%


</head>
<body>

<div class="container">
	<div class="jumbotron">
		<div class="col-sm-8 col-sm-offset-2">


			<div ng-class="{ 'alert': flash, 'alert-success': flash.type === 'success', 'alert-danger': flash.type === 'error' }" ng-if="flash" ng-bind="flash.message">
			</div>
			<div ng-view></div>
		</div>
	</div>

		<div id="page-body" role="main">
			<h1>Welcome to Grails</h1>
			<p>Congratulations, you have successfully started your first Grails application! At the moment
			   this is the default page, feel free to modify it to either redirect to a controller or display whatever
			   content you may choose. Below is a list of controllers that are currently deployed in this application,
			   click on each to execute its default action:</p>

			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
	</div>
	</body>
</html>
