<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Admin Data</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="reg_cod.php" onsubmit="return validation()" method="POST">

        <div class="modal-body">

          <div class="form-group">
            <label> Username </label>
            <input type="text" name="username" id="username" class="form-control" placeholder="Enter Username" required>
          </div>
          <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
          </div>
          <div class="form-group">
            <label>Confirm Password</label>
            <input type="password" name="confirmpassword" id="confirmpassword" class="form-control" placeholder="Confirm Password" required>
          </div>

        </div>
        <div class="modal-footer">
          <lable id="valid_edit" style="color:red;"></lable>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" name="registerbtn" class="btn btn-primary">Save</button>
        </div>
      </form>

    </div>
  </div>
</div>



<script>
  function validation() {
    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var confirmpassword = document.getElementById("confirmpassword").value;
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



    if (confirmpassword != password) {
      text = "Password Not Conformed";
      error.innerHTML = text;
      return false;
    }



    return true;


  }
</script>




<div class="container-fluid">

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      
      <h6 class="m-0 font-weight-bold text-primary">Admin Profile
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
          Add Admin Profile
        </button>
      </h6>
    </div>

    <div class="card-body">



      <div class="table-responsive">

        <?php
        $qur = "SELECT * FROM `admin` ORDER BY id DeSC";
        $data = mysqli_query($con, $qur);
        ?>

        <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
          <thead class="thead-dark">
            <tr>
              <th> Username </th>
              <th>EDIT </th>
              <th>DELETE </th>
            </tr>
          </thead>
          <tbody>
            <?php
            if (mysqli_num_rows($data) > 0) {
              while ($row = mysqli_fetch_assoc($data)) {
            ?>
                <tr>
                  <td><?php echo $row['username']; ?></td>
                  <td>
                    <form action="reg_edit.php" method="post">
                      <input type="hidden" name="edit_id" value="<?php echo $row['id']; ?>">
                      <button type="submit" name="edit_btn" class="btn btn-success"> EDIT</button>
                    </form>
                  </td>
                  <td>
                    <form action="reg_cod.php" method="post">
                      <input type="hidden" name="delete_id" value="<?php echo $row['id']; ?>">
                      <button type="submit" name="delete_btn" class="btn btn-danger"> DELETE</button>
                    </form>
                  </td>
                </tr>

            <?php
              }
            } else {
              echo "no record found";
            }
            ?>

          </tbody>
        </table>



      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

<?php
include('includes/scripts.php');
include('includes/footer.php');
?>