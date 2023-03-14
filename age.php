<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>



<div class="container-fluid">

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Age of each vehicle
      </h6>
    </div>

    <div class="card-body">



      <div class="table-responsive">

        <?php
        $qur = "SELECT `regno`, `d_first_reg`, CURDATE(), TIMESTAMPDIFF(year, d_first_reg, CURDATE()) as age FROM vehical_info;";
        $data = mysqli_query($con, $qur);
        ?>

        <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
          <thead class="thead-dark">
            <tr>
              <th> Registration NO </th>
              <th> First Registerd Date</th>
              <th> Crrunt Date </th>
              <th> age </th>
            </tr>
          </thead>
          <tbody>
            <?php
            if (mysqli_num_rows($data) > 0) {
              while ($row = mysqli_fetch_assoc($data)) {
            ?>
                <tr>
                  <td><?php echo $row['regno']; ?></td>
                  <td><?php echo $row['d_first_reg']; ?></td>
                  <td><?php echo $row['CURDATE()']; ?></td>
                  <td><?php echo $row['age']; ?></td>
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