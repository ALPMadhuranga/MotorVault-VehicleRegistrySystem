<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Add Repair Informations</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="repair_info_cod.php" onsubmit="return validation()" method="POST">

        <div class="modal-body">

        <div class="form-group">
            <label>Register NO</label>
            <select class="browser-default custom-select" name="reg_no" required>
            <option value="">Select</option>
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
            <input type="text" name="g_name" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Gurage Address </label>
            <textarea name="g_address" value="" class="form-control" required rows="3"></textarea>
          </div>
          <div class="form-group">
            <label> Driver Compliant Date </label>
            <input type="date" name="driverComDate" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Date of TB approval </label>
            <input type="date" name="dateOfTbApproove" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Date of handover to the gurage </label>
            <input type="date" name="dateOfHandover" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Date of completion </label>
            <input type="date" name="dateOfCompletion" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Description and cost breakup </label>
            <textarea name="descotbre" value="" class="form-control" required rows="3"></textarea>
          </div>
          <div class="form-group">
            <label> Description of the repair </label>
            <textarea name="desofrepair" value="" class="form-control" required rows="3"></textarea>
          </div>
          <div class="form-group">
            <label> Date of sold </label>
            <input type="date" name="date_sold" value="" class="form-control" >
          </div>
          
          <div class="form-group">
            <label> Price of sold </label>
            <input type="text" name="soldPrice" value="" class="form-control" >
          </div>
          <div class="form-group">
            <label> Replaced new Engine NO </label>
            <input type="text" name="replace_engine_no" value="" class="form-control" >
          </div>
          <div class="form-group">
            <label> Purches date </label>
            <input type="date" name="eng_purchase_date" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Date of Payment </label>
            <input type="date" name="dateofpay" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Chequee No </label>
            <input type="text" name="chequeno" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Gurantee Period </label>
            <input type="text" name="gurantee_period" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Repair Cost </label>
            <input type="text" name="fullcost" value="" class="form-control" required>
          </div>

        </div>
        <div class="modal-footer">
          <lable id="valid_edit" style="color:red;"></lable>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" name="addbtn" class="btn btn-primary">Save</button>
        </div>
      </form>

    </div>
  </div>
</div>




<div class="container-fluid">

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Repair Informations
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
          Add Repair Informations
        </button>
      </h6>
    </div>

    <div class="card-body">



      <div class="table-responsive">

        <?php
        $qur = "SELECT `id`, `reg_no`, `g_name`, `g_address`, `driverComDate`, `dateOfTbApproove`, `dateOfHandover`, `dateOfCompletion`, `descotbre`, `desofrepair`, `date_sold`, `soldPrice`, `replace_engine_no`, `eng_purchase_date`, `dateofpay`, `chequeno`, `gurantee_period`, `fullcost`, `engine_no`, `v_class`, `region` FROM repairs INNER JOIN vehical_info on repairs.reg_no = vehical_info.regno ORDER BY id DESC;";
        $data = mysqli_query($con, $qur);
        ?>

        <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
          <thead class="thead-dark">
            <tr>
              <th>Registration NO </th>
              <th>Vehicle Class </th>
              <th>Region </th>
              <th>Engine NO </th>
              <th>Gurage Name</th>
              <th>Gurage Address</th>
              <th>Driver Compliant Date </th>
              <th>Date of TB Approval </th>
              <th>Date of Handover to the Gurage </th>
              <th>Date of Completion </th>
              <th>Description and Coust Breeakup </th>
              <th>Description of the Repair </th>
              <th>Date of Sold </th>
              <th>Price of Sold </th>
              <th>New Engine NO </th>
              <th>Purches Date </th>
              <th>Date of Payment </th>
              <th>Cheque NO </th>
              <th>Total Cost </th>
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
                  <td><?php echo $row['reg_no']; ?></td>
                  <td><?php echo $row['v_class']; ?></td>
                  <td><?php echo $row['region']; ?></td>
                  <td><?php echo $row['engine_no']; ?></td>
                  <td><?php echo $row['g_name']; ?></td>
                  <td><?php echo $row['g_address']; ?></td>
                  <td><?php echo $row['driverComDate']; ?></td>
                  <td><?php echo $row['dateOfTbApproove']; ?></td>
                  <td><?php echo $row['dateOfHandover']; ?></td>
                  <td><?php echo $row['dateOfCompletion']; ?></td>
                  <td><?php echo $row['descotbre']; ?></td>
                  <td><?php echo $row['desofrepair']; ?></td>
                  <td><?php echo $row['date_sold']; ?></td>
                  <td><?php echo $row['soldPrice']; ?></td>
                  <td><?php echo $row['replace_engine_no']; ?></td>
                  <td><?php echo $row['eng_purchase_date']; ?></td>
                  <td><?php echo $row['dateofpay']; ?></td>
                  <td><?php echo $row['chequeno']; ?></td>
                  <td><?php echo $row['fullcost']; ?></td>
                  <td>
                    <form action="repair_info_edit.php" method="post">
                      <input type="hidden" name="edit_id" value="<?php echo $row['id']; ?>">
                      <button type="submit" name="edit_btn" class="btn btn-success"> EDIT</button>
                    </form>
                  </td>
                  <td>
                    <form action="repair_info_cod.php" method="post">
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