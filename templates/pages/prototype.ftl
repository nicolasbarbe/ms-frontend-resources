<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="${ctx.contextPath}/.resources/ms-frontend-resources/webresources/css/bootstrap.css" rel="stylesheet">
    <link href="${ctx.contextPath}/.resources/ms-frontend-resources/webresources/css/style.css" rel="stylesheet">

    [@cms.page /]
    
  </head>
  <body>


    <div class="row">
      <nav class="navbar navbar-static-top navbar-inverse">

        <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <a class="navbar-brand" href="/home">
              <img  id="logo" src="${ctx.contextPath}/.resources/ms-frontend-resources/webresources/images/logo.svg"/>
              <span>ASK<span>
            </a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
             <ul class="nav navbar-nav navbar-right">
           
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Nicolas Barbé <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">My Profile</a></li>
                  <li><a href="#">Sign Out</a></li>
                </ul>
              </li>
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
    </div>

    <div class="row searchAndAsk">
      <div class="container content">

        <div class="col-md-8">
          <form class="form-inline" role="search">
              <div class="form-group">
                <label>Search a question</label>
                <input type="text" class="form-control" placeholder="Search">
                <a href="#" role="button" class="btn btn-primary btn-large">Go</a>
            </div>
          </form>
        </div>
        <div class="col-md-4">
          <a href="./discussion/create" role="button" class="btn btn-success btn-large pull-right">Ask Question</a>
        </div>
      </div>
    </div>



    <div class="container content">

   
       
      <div class="row">


        <!-- main content -->
        <div class="col-md-12">

            [@cms.area name="main"/]
         
        </div>

    
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${ctx.contextPath}/.resources/ms-frontend-resources/webresources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${ctx.contextPath}/.resources/ms-frontend-resources/webresources/js/bootstrap.min.js"></script>
    <script src="${ctx.contextPath}/.resources/ms-frontend-resources/webresources/js/moment.js"></script>
    <script src="${ctx.contextPath}/.resources/ms-frontend-resources/webresources/js/scripts.js"></script>
  </body>
</html>