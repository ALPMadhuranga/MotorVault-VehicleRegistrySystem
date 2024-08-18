<?php
session_start();
include('includes/header.php');
?>

<div class="container">

  <!-- Outer Row -->
  <div class="row justify-content-center">

    <div class="col-xl-8 col-lg-12 col-md-9">

      <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0 m-2">
        <h1 class="h1 text-gray-900 mt-2 text-center">MOTOR VAULT</h1>
        <h2 class="h5 text-gray-900 mt-2 text-center">Vehicle Registry System</h2>
        <hr>
          <!-- Nested Row within Card Body -->
          <div class="row">
            <div class="col-lg-6 d-none d-lg-block"><img src="Res/Local/258474.jpg" width="350px" height="340px;"></div>
            <div class="col-lg-6">
              <div class="p-4">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-4">Login Here</h1>

                  <?php
                  if (isset($_SESSION['status']) && $_SESSION['status'] != '') {
                    echo '<h4 class="bg-danger">' . $_SESSION['status'] . '</h4>';
                    unset($_SESSION['status']);
                  }

                  ?>
                </div>

                <form class="user" action="reg_cod.php" method="post">

                  <div class="form-group">
                    <input type="text" id="username" name="username" class="form-control form-control-user" placeholder="User Name" required>
                  </div>

                  <div class="form-group">
                    <input type="password" id="password" name="password" class="form-control form-control-user" placeholder="Password" required>
                  </div>

                    <button type="submit" name="login_btn" href="index.html" class="btn btn-primary btn-user btn-block">Login</button>
                  <hr>
                </form>


              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>

</div>

<?php
include('includes/scripts.php');
?>