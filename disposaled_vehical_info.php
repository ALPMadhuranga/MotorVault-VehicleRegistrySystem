<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>












<div class="container-fluid">

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <div class="row">
        <div class="col-md-9">
      <h6 class="m-0 font-weight-bold text-primary">Disposaled Vehicle Information
      </h6>
    </div>
    </div>
    </div>

    <div class="card-body">



      <div class="table-responsive">

        <?php
        $qur = "SELECT * FROM `vehical_info` WHERE `activeSS` = 1 ORDER BY `regno` DESC;";
        $data = mysqli_query($con, $qur);
        ?>

        <table class="table table-responsive" id="myTable" width="100%" cellspacing="0">
          <thead class="thead-dark">
            <tr>
              <th>Registration No</th>
              <th>Chassis No</th>
              <th>Current Owner Address</th>
              <th>Engine No</th>
              <th>Cylinder Capacity</th>
              <th>Vehicle Class</th>
              <th>vehicle class by CMV</th>
              <th>Make</th>
              <th>Country of Origin</th>
              <th>Model</th>
              <th>Year of Manufacture</th>
              <th>Country of Import</th>
              <th>Fuel Type</th>
              <th>Tyre Size Front</th>
              <th>Tyre Size Dual</th>
              <th>Tyre Size Rear</th>
              <th>Tyre Size Single</th>
              <th>Date of Registration</th>
              <th>Current Region</th>
              <th>Current Location</th>
              <th>Delete </th>
            </tr>
          </thead>
          <tbody>
            <?php
            if (mysqli_num_rows($data) > 0) {
              while ($row = mysqli_fetch_assoc($data)) {
            ?>
                <tr>
                  <td><?php echo $row['regno']; ?></td>
                  <td><?php echo $row['chasee_no']; ?></td>
                  <td><?php echo $row['owner_add']; ?></td>
                  <td><?php echo $row['engine_no']; ?></td>
                  <td><?php echo $row['c_cap']; ?></td>
                  <td><?php echo $row['v_class']; ?></td>
                  <td><?php echo $row['v_class_of']; ?></td>
                  <td><?php echo $row['make']; ?></td>
                  <td><?php echo $row['c_origin']; ?></td>
                  <td><?php echo $row['model']; ?></td>
                  <td><?php echo $row['year_manu']; ?></td>
                  <td><?php echo $row['c_import']; ?></td>
                  <td><?php echo $row['f_type']; ?></td>
                  <td><?php echo $row['ty_fr']; ?></td>
                  <td><?php echo $row['ty_du']; ?></td>
                  <td><?php echo $row['ty_re']; ?></td>
                  <td><?php echo $row['ty_sin']; ?></td>
                  <td><?php echo $row['d_first_reg']; ?></td>
                  <td><?php echo $row['region']; ?></td>
                  <td><?php echo $row['location']; ?></td>
                  <td>
                    <form action="disposaled_vehical_info_cod.php" method="post">
                      <input type="hidden" name="regno" value="<?php echo $row['regno']; ?>">
                      <button type="submit" name="delete_btn" class="btn btn-danger"> Delete</button>
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