<!DOCTYPE html>
<html>
<head>
    <title>Login | Register</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="http://www.harman.in/wp-content/themes/harmanindia/favicon.ico" >
    <!--<link rel="icon" type="image/ico" href="ac.ico">-->
   %{-- <script src="/css/Bootstrap1.min.css" type="text/css"></script>--}%
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />
</head>
<body>

<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <h1><center>
            <img src="2.jpg" alt="company logo" style="width: 350px; height: 100px;">
        </center></h1>
        <h5>
            <center>
                <br>
                Peer-To-Peer Reward and
                <br>
                Recognition Program
            </center>
            <br>
        </h5>
        <h2><i>Login</i></h2><br>
        %{--<div align="center"> <h6>Enter your E-mail and password and then click on login to continue</h6><br></div>--}%


        <g:if test="${flash.message}">

            <div align="center" class="message"><h6>${flash.message}</h6><br></div>
        </g:if>
        <g:else>
            <div align="center"> <h6>Enter your E-mail and password and then click on login to continue</h6><br></div>
        </g:else>

        <form name="form"  method="post" role="form">


            <div class="form-group" ng-class="{ 'has-error': form.email.$dirty && form.email.$error.required }">
                <!--<label for="username">Username</label>-->
                <div class="input-group">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </div>
                    <input type="email" name="emailId" id="emailId" title="password should be alpha-numeric containing at least one uppercase and one special character " placeholder="username" class="form-control"  required />
                    <!--<span ng-show="form.username.$dirty && form.username.$error.required" class="help-block">Username is required</span>-->
                </div>
            </div>

            <br>
            <div class="form-group" ng-class="{ 'has-error': form.password.$dirty && form.password.$error.required }">
                <!--<label for="password">Password</label>-->
                <div class="input-group">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-lock"></span>
                    </div>
                    <input type="password" name="password" title="password should be alpha-numeric containing at least one uppercase and one special character " placeholder="password" id="password" class="form-control" required />
                    <!--<span ng-show="form.password.$dirty && form.password.$error.required" class="help-block">Password is required</span>-->
                </div>
            </div>
            <br>
            <div class="checkbox">
                <label><input type="checkbox"> Remember me</label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#/reset" >Forgot your Password ?</a>
            </div>

            <br>
            <div class="form-actions">
               %{-- <button type="submit" ng-disabled="form.$invalid || vm.dataLoading" class="btn btn-primary">Login</button>--}%
                <g:actionSubmit name="Login" value="Login" action="authenticate"  type="submit" ng-disabled="form.$invalid || vm.dataLoading" class="btn btn-primary"/>
                   %{-- <g:actionSubmit name="ForgotPassword" value="ForgotPassword" action="ForgotPassword"  />--}%

          %{--      <img ng-if="vm.dataLoading" src="data:image/gif;base64,R0lGODlhEAAQAPIAAP///wAAAMLCwkJCQgAAAGJiYoKCgpKSkiH/C05FVFNDQVBFMi4wAwEAAAAh/hpDcmVhdGVkIHdpdGggYWpheGxvYWQuaW5mbwAh+QQJCgAAACwAAAAAEAAQAAADMwi63P4wyklrE2MIOggZnAdOmGYJRbExwroUmcG2LmDEwnHQLVsYOd2mBzkYDAdKa+dIAAAh+QQJCgAAACwAAAAAEAAQAAADNAi63P5OjCEgG4QMu7DmikRxQlFUYDEZIGBMRVsaqHwctXXf7WEYB4Ag1xjihkMZsiUkKhIAIfkECQoAAAAsAAAAABAAEAAAAzYIujIjK8pByJDMlFYvBoVjHA70GU7xSUJhmKtwHPAKzLO9HMaoKwJZ7Rf8AYPDDzKpZBqfvwQAIfkECQoAAAAsAAAAABAAEAAAAzMIumIlK8oyhpHsnFZfhYumCYUhDAQxRIdhHBGqRoKw0R8DYlJd8z0fMDgsGo/IpHI5TAAAIfkECQoAAAAsAAAAABAAEAAAAzIIunInK0rnZBTwGPNMgQwmdsNgXGJUlIWEuR5oWUIpz8pAEAMe6TwfwyYsGo/IpFKSAAAh+QQJCgAAACwAAAAAEAAQAAADMwi6IMKQORfjdOe82p4wGccc4CEuQradylesojEMBgsUc2G7sDX3lQGBMLAJibufbSlKAAAh+QQJCgAAACwAAAAAEAAQAAADMgi63P7wCRHZnFVdmgHu2nFwlWCI3WGc3TSWhUFGxTAUkGCbtgENBMJAEJsxgMLWzpEAACH5BAkKAAAALAAAAAAQABAAAAMyCLrc/jDKSatlQtScKdceCAjDII7HcQ4EMTCpyrCuUBjCYRgHVtqlAiB1YhiCnlsRkAAAOwAAAAAAAAAAAA==" />
         --}%      <a href="#/register" class="btn btn-link">Register</a>
            </div></form>
    </div>
</div>
</body>
</html>