<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<div class="container-fluid">

  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Edit Disposal Details</h6>
    </div>

    <div class="card-body">
      <?php
      if (isset($_POST['edit_btn'])) {
        $id = $_POST['edit_id'];

        $qur = "SELECT * FROM `disposal` WHERE ID='$id'";
        $data = mysqli_query($con, $qur);
        foreach ($data as $row) {
      ?>

          <form action="disposal_cod.php" onsubmit="return validation()" method="POST">
            <input type="hidden" name="edit_id" value="<?php echo $row['id']; ?>">
            <input type="hidden" name="reg_id" value="<?php echo $row['regno']; ?>">
            <div class="form-group">
            <label>Register NO</label>
            <select class="browser-default custom-select" name="regnoEd" id="reg_no" required onchange="searchFilter()">
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
            <label> Disposal date </label>
            <input type="date" name="disposal_dateEd" value="<?php echo $row['disposal_date']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Name of the BIDDER </label>
            <input type="text" name="name_bidderEd" value="<?php echo $row['name_bidder']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> NIC</label>
            <input type="text" name="nic_noEd" value="<?php echo $row['nic_no']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Bid price </label>
            <input type="text" name="bid_priceEd" value="<?php echo $row['bid_price']; ?>" class="form-control" required>
          </div>

            <lable id="valid_edit" style="color:red;"></lable>
            <a href="disposal.php" class="btn btn-danger">CANCEL</a>
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