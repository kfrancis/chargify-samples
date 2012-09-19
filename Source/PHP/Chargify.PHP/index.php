
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
                            <li class="active"><a href="#">Home</a></li>
                        </ul>
                        <ul class="nav pull-right">
                            <li><a href="plans.php">Plans and Pricing</a></li>
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

            <!-- Main hero unit for a primary marketing message or call to action -->
            <div class="hero-unit">
                <h1><?php echo '<h1>Hello, world!</h1>'; ?></h1>
                <p>This is a template for a simple marketing or informational website which integrates with Chargify to handle the creation of subscriptions.</p>
                <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
            </div>

            <!-- Example row of columns -->
            <div class="row">
                <div class="span4">
                    <h2>Heading</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                    <p><a class="btn" href="#">View details &raquo;</a></p>
                </div>
                <div class="span4">
                    <h2>Heading</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                    <p><a class="btn" href="#">View details &raquo;</a></p>
                </div>
                <div class="span4">
                    <h2>Heading</h2>
                    <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                    <p><a class="btn" href="#">View details &raquo;</a></p>
                </div>
            </div>

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
