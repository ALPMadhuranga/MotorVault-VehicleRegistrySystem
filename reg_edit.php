<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<div class="container-fluid">

  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Edit Admin Profile</h6>
    </div>

    <div class="card-body">
      <?php
      if (isset($_POST['edit_btn'])) {
        $id = $_POST['edit_id'];

        $qur = "SELECT * FROM `admin` WHERE id='$id'";
        $data = mysqli_query($con, $qur);
        foreach ($data as $row) {
      ?>

          <form action="reg_cod.php" onsubmit="return validation()" method="POST">
            <input type="hidden" name="edit_id" value="<?php echo $row['id']; ?>">
            <div class="form-group">
              <label> Username </label>
              <input type="text" name="edit_username" id="username" value="<?php echo $row['username']; ?>" class="form-control">
            </div>
            <div class="form-group">
              <label>Password</label>
              <input type="password" name="edit_password" id="password" value="<?php echo $row['passcode']; ?>" class="form-control">
            </div>

            <lable id="valid_edit" style="color:red;"></lable>
            <a href="register.php" class="btn btn-danger">CANCEL</a>
            <button type="submit" name="updatebtn" class="btn btn-primary">UPDATE</button>

          </form>
      <?php
        }
      }
      ?>


    </div>
  </div>
</div>

</div>
<!-- /.container-fluid -->

<script>
  function validation() {
    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var error = document.getElementById("valid_edit");
    var text;



    if (username.length < 5) {
      text = "Place Enter Valid Another User Name";
      error.innerHTML = text;
      return false;
    }

    if (password.length < 5 || password.length > 20) {
      text = "password wrong";
      error.innerHTML = text;
      return false;
    }

    if (email.length < 5) {
      text = "Worng Email";
      error.innerHTML = text;
      return false;
    }



    return true;


  }
</script>


<?php
include('includes/scripts.php');
include('includes/footer.php');
?>