<?php
include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
  </div>

  <!-- Content Row -->
  <div class="row">

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-6 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Registered Admin</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">

                <?php

                $qur = "SELECT `id` FROM `admin` ORDER BY id";
                $data = mysqli_query($con, $qur);

                $row = mysqli_num_rows($data);

                echo '<h4>Total Admin:' . $row . '</h4>';

                ?>

              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users-cog fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-6 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Registered Vehicals</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">

                <?php

                $qur = "SELECT `regno` FROM `vehical_info` ORDER BY regno";
                $data = mysqli_query($con, $qur);

                $row = mysqli_num_rows($data);

                echo '<h4>Total Vehicles:' . $row . '</h4>';

                ?>

              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-truck-monster fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-12 col-md-auto mb-auto">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Vehical Count by Type</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">

              <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
                

              </div>
            </div>
            <div class="col-auto">
            </div>
          </div>
        </div>
      </div>
    </div>


  </div>

  <!-- Content Row -->


  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          <?PHP 
          $query = "SELECT `v_class`, count(*) as number FROM vehical_info GROUP BY `v_class`;";
          $result = mysqli_query($con, $query);  
          while($row = mysqli_fetch_array($result))  
          {  
               echo "['".$row["v_class"]."', ".$row["number"]."],";  
          } 
          ?>
        ]);

        var options = {
          title: 'Vehicle Count',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>


  <?php
  include('includes/scripts.php');
  include('includes/footer.php');
  ?>