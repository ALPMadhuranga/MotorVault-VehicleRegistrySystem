<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Add Disposal Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="disposal_cod.php" onsubmit="return validation()" method="POST">

        <div class="modal-body">

        <div class="form-group">
            <label>Register NO</label>
            <select class="browser-default custom-select" name="regno" id="reg_no" required onchange="searchFilter()">
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
            <label> Disposal date </label>
            <input type="date" name="disposal_date" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Name of the BIDDER </label>
            <input type="text" name="name_bidder" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> NIC</label>
            <input type="text" name="nic_no" value="" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Bid price </label>
            <input type="text" name="bid_price" value="" class="form-control" required>
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
      <h6 class="m-0 font-weight-bold text-primary">Disposal Details
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
          Add Disposal Details
        </button>
      </h6>
    </div>

    <div class="card-body">



      <div class="table-responsive">

        <?php
        $qur = "SELECT * FROM `disposal` ORDER BY id DESC;";
        $data = mysqli_query($con, $qur);
        ?>

        <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
          <thead class="thead-dark">
            <tr>
              <th> Register NO</th>
              <th> Disposal date </th>
              <th> Name of the BIDDER </th>
              <th> NIC </th>
              <th> Bid price  </th>
              <th>EDIT </th>
              <th>Cancel Disposal </th>
            </tr>
          </thead>
          <tbody>
            <?php
            if (mysqli_num_rows($data) > 0) {
              while ($row = mysqli_fetch_assoc($data)) {
            ?>
                <tr>
                  <td><?php echo $row['regno']; ?></td>
                  <td><?php echo $row['disposal_date']; ?></td>
                  <td><?php echo $row['name_bidder']; ?></td>
                  <td><?php echo $row['nic_no']; ?></td>
                  <td><?php echo $row['bid_price']; ?></td>
                  <td>
                    <form action="disposal_edit.php" method="post">
                      <input type="hidden" name="edit_id" value="<?php echo $row['id']; ?>">
                      <button type="submit" name="edit_btn" class="btn btn-success"> EDIT</button>
                    </form>
                  </td>
                  <td>
                    <form action="disposal_cod.php" method="post">
                      <input type="hidden" name="delete_id" value="<?php echo $row['id']; ?>">
                      <input type="hidden" name="regno" value="<?php echo $row['regno']; ?>">
                      <button type="submit" name="delete_btn" class="btn btn-danger"> CANCEL</button>
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