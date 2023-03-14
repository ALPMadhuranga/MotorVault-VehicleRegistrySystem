<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<div class="container-fluid">

  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Edit Repair Informations</h6>
    </div>

    <div class="card-body">
      <?php
      if (isset($_POST['edit_btn'])) {
        $id = $_POST['edit_id'];

        $qur = "SELECT * FROM `repairs` WHERE ID='$id'";
        $data = mysqli_query($con, $qur);
        foreach ($data as $row) {
      ?>

          <form action="repair_info_cod.php" onsubmit="return validation()" method="POST">
            <input type="hidden" name="edit_id" value="<?php echo $row['id']; ?>">
            <div class="form-group">
            <label>Register NO</label>
            <select class="browser-default custom-select" name="reg_noEd" required>
            <option value="<?php echo $row['reg_no']; ?>"><?php echo $row['reg_no']; ?></option>
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
            <label> Gurage Name </label>
            <input type="text" name="g_nameEd" value="<?php echo $row['g_name']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Gurage Address </label>
            <textarea name="g_addressEd" value="" class="form-control" required rows="3"><?php echo $row['g_address']; ?></textarea>
          </div>
          <div class="form-group">
            <label> Driver Compliant Date </label>
            <input type="date" name="driverComDateEd" value="<?php echo $row['driverComDate']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Date of TB approval </label>
            <input type="date" name="dateOfTbApprooveEd" value="<?php echo $row['dateOfTbApproove']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Date of handover to the gurage </label>
            <input type="date" name="dateOfHandoverEd" value="<?php echo $row['dateOfHandover']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Date of completion </label>
            <input type="date" name="dateOfCompletionEd" value="<?php echo $row['dateOfCompletion']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Description and cost breakup </label>
            <textarea name="descotbreEd" value="" class="form-control" required rows="3"><?php echo $row['descotbre']; ?></textarea>
          </div>
          <div class="form-group">
            <label> Description of the repair </label>
            <textarea name="desofrepairEd" value="" class="form-control" required rows="3"><?php echo $row['desofrepair']; ?></textarea>
          </div>
          <div class="form-group">
            <label> Date of sold </label>
            <input type="date" name="date_soldEd" value="<?php echo $row['date_sold']; ?>" class="form-control" >
          </div>
          
          <div class="form-group">
            <label> Price of sold </label>
            <input type="text" name="soldPriceEd" value="<?php echo $row['soldPrice']; ?>" class="form-control" >
          </div>
          <div class="form-group">
            <label> Replaced new Engine NO </label>
            <input type="text" name="replace_engine_noEd" value="<?php echo $row['replace_engine_no']; ?>" class="form-control" >
          </div>
          <div class="form-group">
            <label> Purches date </label>
            <input type="date" name="eng_purchase_dateEd" value="<?php echo $row['eng_purchase_date']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Date of Payment </label>
            <input type="date" name="dateofpayEd" value="<?php echo $row['dateofpay']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Chequee No </label>
            <input type="text" name="chequenoEd" value="<?php echo $row['chequeno']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Gurantee Period </label>
            <input type="text" name="gurantee_periodEd" value="<?php echo $row['gurantee_period']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Repair Cost </label>
            <input type="text" name="fullcostEd" value="<?php echo $row['fullcost']; ?>" class="form-control" required>
          </div>

            <lable id="valid_edit" style="color:red;"></lable>
            <a href="repair_info.php" class="btn btn-danger">CANCEL</a>
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