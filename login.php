
<?php
require 'includes/header.php'
?>
<main>
  <link rel="stylesheet" href="css/login.css">
        <div class="bg-cover">
            <div class="container" style="padding-top: 70px;">
                <div id="slides" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                      <li data-target="#slides" data-slide-to="0" class="active"></li>
                      <li data-target="#slides" data-slide-to="1"></li>
                      <li data-target="#slides" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block mx-auto" src="images/carousel-1.jpg" alt="First slide">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block mx-auto" src="images/carousel-2.jpg" alt="Second slide">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block mx-auto" src="images/carousel-3.jpg" alt="Third slide">
                      </div>
                    </div>


                  </div>
            </div>
            
            <div class="h-60 center-me">
                <div class="my-auto">
                    <form class="form-signin" action="includes/login-helper.php" method="post" style="background: rgb(255, 255, 255)">
                        <h1 class="h3 mb-3 front-qeight-normal">Sign in Please</h1>
                        <lable for="inputEmail" class="sr-only">Username or Email Address</lable>
                        <input type="text" id="inputEmail" name="uname" class="form-control" placeholder="Username/ Email" required
                        autofocus>
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" id="inputPassword" name="pwd" class="form-control" placeholder="Password" required>
                        <div class="chechbox mb-3" style="text-align: left;">
                            <label>
                                <input type="checkbox" value="remember-me"> Remember me
                            </label>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block" name="login-submit" type="submit">Sign in</button>
                        <p class="mt-5 mb-3 text-muted">&copy;2020-2021</p>
                    </form>
    
                </div>

            </div>

        </div>
            
</main>
