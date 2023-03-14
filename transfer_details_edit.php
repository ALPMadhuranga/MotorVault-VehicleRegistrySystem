<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<div class="container-fluid">

  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Edit Transfer Details</h6>
    </div>

    <div class="card-body">
      <?php
      if (isset($_POST['edit_btn'])) {
        $id = $_POST['edit_id'];

        $qur = "SELECT * FROM `tranfers` WHERE ID='$id'";
        $data = mysqli_query($con, $qur);
        foreach ($data as $row) {
      ?>

          <form action="transfer_details_cod.php" onsubmit="return validation()" method="POST">
            <input type="hidden" name="edit_id" value="<?php echo $row['ID']; ?>">
          <div class="form-group">
            <label>Register NO</label>
            <select class="browser-default custom-select" name="reg_no_ed" required>
            <option value="<?php echo $row['regno']; ?>"><?php echo $row['regno']; ?></option>
            <?php
                $qur1 = "SELECT `regno` FROM `vehical_info`";
                $data1 = mysqli_query($con, $qur1);
                while ($row1 = mysqli_fetch_row($data1)) {
            ?>
            <option value="<?php echo ($row1[0]); ?>"><?php echo ($row1[0]); ?></option>
            <?php
            }
            ?>
            </select>
          </div>
          <div class="form-group">
            <label> Transfer date </label>
            <input type="date" name="date_ed" value="<?php echo $row['transfer_date']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> From Where </label>
            <input type="text" name="fw_ed" value="<?php echo $row['fromwhere']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> To Where </label>
            <input type="text" name="tw_ed" value="<?php echo $row['towhere']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> To Region </label>
            <input type="text" name="tr_ed" value="<?php echo $row['toregion']; ?>" class="form-control" required>
          </div>

            <lable id="valid_edit" style="color:red;"></lable>
            <a href="transfer_details.php" class="btn btn-danger">CANCEL</a>
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



<?php
include('includes/scripts.php');
include('includes/footer.php');
?>