<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Add Tranfer Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="transfer_details_cod.php" onsubmit="return validation()" method="POST">

        <div class="modal-body">

        <div class="form-group">
            <label>Register NO</label>
            <select class="browser-default custom-select" name="reg_no" id="reg_no" required onchange="searchFilter()">
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
            <label> Transfer date </label>
            <input type="date" name="date" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> From Where </label>
            <input type="text" name="fw" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> To Where </label>
            <input type="text" name="tw" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> To Region </label>
            <input type="text" name="tr" value="" class="form-control" required>
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
      <h6 class="m-0 font-weight-bold text-primary">Tranfer Details
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
          Add Tranfer Details
        </button>
      </h6>
    </div>

    <div class="card-body">



      <div class="table-responsive">

        <?php
        $qur = "SELECT tranfers.ID,tranfers.regno, tranfers.transfer_date, tranfers.fromwhere, tranfers.towhere, tranfers.toregion, vehical_info.v_class, vehical_info.region, vehical_info.location FROM tranfers INNER JOIN vehical_info ON tranfers.regno = vehical_info.regno ORDER BY transfer_date DESC;";
        $data = mysqli_query($con, $qur);
        ?>

        <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
          <thead class="thead-dark">
            <tr>
              <th> Transfer Date </th>
              <th> Region </th>
              <th> Vehical Class </th>
              <th> Registration NO </th>
              <th> Current Location </th>
              <th> From Where </th>
              <th> To where </th>
              <th> To Region </th>
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
                  <td><?php echo $row['transfer_date']; ?></td>
                  <td><?php echo $row['region']; ?></td>
                  <td><?php echo $row['v_class']; ?></td>
                  <td><?php echo $row['regno']; ?></td>
                  <td><?php echo $row['location']; ?></td>
                  <td><?php echo $row['fromwhere']; ?></td>
                  <td><?php echo $row['towhere']; ?></td>
                  <td><?php echo $row['toregion']; ?></td>
                  <td>
                    <form action="transfer_details_edit.php" method="post">
                      <input type="hidden" name="edit_id" value="<?php echo $row['ID']; ?>">
                      <button type="submit" name="edit_btn" class="btn btn-success"> EDIT</button>
                    </form>
                  </td>
                  <td>
                    <form action="transfer_details_cod.php" method="post">
                      <input type="hidden" name="delete_id" value="<?php echo $row['ID']; ?>">
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