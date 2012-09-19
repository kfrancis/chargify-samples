<?php

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Bootstrap, from Twitter</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Le styles -->
        <link href="src/css/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
            body {
              padding-top: 60px;
              padding-bottom: 40px;
            }
        </style>
        <link href="src/css/bootstrap-responsive.min.css" rel="stylesheet">

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
                    <!--[if lt IE 9]>
                  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
                <![endif]-->
        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="favicon.ico">
    </head>

    <body>

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">Chargify PHP Sample</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li><a href="index.php">Home</a></li>
                        </ul>
                        <ul class="nav pull-right">
                            <li class="active"><a href="#">Plans and Pricing</a></li>
                            <li><a href="#login">Login</a></li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>

        <div class="container">

            <?php
                require_once('lib/chargify/lib/Chargify.php');
            ?>



            <hr>

            <footer>
                <p>&copy; Company 2012</p>
            </footer>

        </div> <!-- /container -->
                    <!-- Le javascript
                ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="src/js/jquery-1.7.1.min.js"></script>
        <script src="src/js/bootstrap.min.js"></script>
    </body>
</html>
