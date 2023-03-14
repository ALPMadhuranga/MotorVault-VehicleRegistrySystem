<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');

?>

<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Vehicle Informations</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="vehical_info_cod.php" onsubmit="return validation()" method="POST">

        <div class="modal-body">

          <div class="form-group">
            <label>Registration No </label>
            <input type="text" id="reg_no" name="reg_no" value="" class="form-control" >
          </div>
          <div class="form-group">
            <label>Chessee NO</label>
            <input type="text" id="cha_no" name="cha_no" value="" class="form-control" >
          </div>
          <div class="form-group">
            <label>Engine NO</label>
            <input type="text" id="eng_no" name="eng_no" value="" class="form-control"  >
          </div>
          <div class="form-group">
            <label>Cylinder Capacity</label>
            <input type="text" id="ccap" name="ccap" value="" class="form-control"  >
          </div>
          
          <div class="form-group">
            <label>FUEL Type</label>
            <select class="browser-default custom-select" name="ftype" id="ftype">
            <option value="">Select</option>
            <option value="P">Petrol</option>
            <option value="D">Diesel</option>
            </select>
          </div>
          <div class="form-group">
            <label>Country of Orgin</label>
            <input type="text" name="corgin" value="" class="form-control" id="corgin" >
          </div>
          <div class="form-group">
            <label>Year of Manufacture</label>
            <input type="text" name="ymanu" value="" class="form-control" id="ymanu" >
          </div>
          <div class="form-group">
            <label>Country of Import</label>
            <input type="text" name="cimport" value="" class="form-control"  id="cimport">
          </div>
          <div class="form-group">
          <div class="row">
          <div class="col">
          <label>Front Tyre Size</label>
            <input type="text" name="fttyre" value="" class="form-control" id="fttyre">
          </div>
          <div class="col">
          <label>Rear Tyre Size</label>
            <input type="text" name="raretyre" value="" class="form-control" id="raretyre">
          </div>
          </div>
         </div>
         <div class="form-group">
          <div class="row">
          <div class="col">
          <label>Dual</label>
            <input type="text" name="dualtyre" value="" class="form-control" placeholder="" id="dualtyre">
          </div>
          <div class="col">
          <label>Single</label>
            <input type="text" name="singletyre" value="" class="form-control" placeholder="" id="singletyre">
          </div>
          </div>
         </div>
          <div class="form-group">
            <label>Date of First Regestration</label>
            <input type="date" name="dateofreg" value="" class="form-control" id="dateofreg" >
          </div>
          <div class="form-group">
            <label>Current Owner Details</label>
            <input type="text" name="coad" value="" class="form-control" id="coad" >
          </div>
          <div class="form-group">
            <label>Make</label>
            <input type="text" name="make" value="" class="form-control" id="make">
          </div>
          <div class="form-group">
            <label>Model</label>
            <input type="text" name="model" value="" class="form-control" id="model" >
          </div>
          <div class="form-group">
            <label>Current Location</label>
            <input type="text" name="clocation" value="" class="form-control" id="clocation" >
          </div>
          <div class="form-group">
            <label>Current Region</label>
            <input type="text" name="cregion" value="" class="form-control" id="cregion" >
          </div>
          <div class="form-group">
            <label>Cost of Vehicle /Purchase Price (mention gift if it is a gift)</label>
            <input type="text" name="covehicle" value="" class="form-control" id="covehicle" >
          </div>
          <div class="form-group">
            <label>Engine No 2 (if replaced earlier)</label>
            <input type="text" name="eng2" value="" class="form-control" id="eng2" >
          </div>
          <div class="form-group">
            <label>vehicle class by cmv</label>
            <input type="text" name="vccmv" value="" class="form-control" id="vccmv" >
          </div>
          

        </div>
        <div class="modal-footer">
          <lable id="valid_edit" style="color:red;"></lable>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" name="vehicleinfo" class="btn btn-primary">Save</button>
        </div>
      </form>

    </div>
  </div>
</div>



<div class="container-fluid">

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <div class="row">
        <div class="col-md-9">
      <h6 class="m-0 font-weight-bold text-primary">Vehicle Information
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
          Add Vehicle Information
        </button>
      </h6>
    </div>
    <div class="col-md-3">
      
    <div class="form-group">
    <select class="browser-default custom-select" name="fVClass" id="custom-select" required>
            <option value="">Select</option>
            <option value="Cab">Cab</option>
            <option value="Jeep">Jeep</option>
            <option value="Lorry">Lorry</option>
            <option value="Bowser">Bowser</option>
            <option value="Tractors">Tractors</option>
            <option value="Doser">Doser</option>
            <option value="Roller">Roller</option>
            <option value="JCB">JCB</option>
            <option value="Caterpilar">Caterpilar</option>
            <option value="Motorgrater">Motorgrater</option>
            <option value="Motorbike">Motorbike</option>
            <option value="Boat">Boat</option>
            <option value="Car">Car</option>
            <option value="Pajero">Pajero</option>
            <option value="Van">Van</option>
            <option value="Trailer">Trailer</option>
            </select>
          </div>
      </h6>
    </div>
    </div>
    </div>

    <div class="card-body">



      <div class="table-responsive">

        <?php
        $qur = "SELECT * FROM `vehical_info` WHERE `activeSS` = 0 ORDER BY `regno` DESC;";
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
                    <form action="vehical_info_edit.php" method="post">
                      <input type="hidden" name="edit_id" value="<?php echo $row['regno']; ?>">
                      <button type="submit" name="edit_btn" class="btn btn-success"> EDIT</button>
                    </form>
                  </td>
                  <td>
                    <form action="vehical_info_cod.php" method="post">
                      <input type="hidden" name="delete_id" value="<?php echo $row['regno']; ?>">
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

<!-- container - fluid -->
<?php
include('includes/scripts.php');
include('includes/footer.php');
?>