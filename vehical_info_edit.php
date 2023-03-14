<?php

include('security.php');
include('includes/header.php');
include('includes/navbar.php');
?>


<div class="container-fluid">

  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Edit Vehicle Informations</h6>
    </div>

    <div class="card-body">
      <?php
      if (isset($_POST['edit_btn'])) {
        $id = $_POST['edit_id'];

        $qur = "SELECT * FROM `vehical_info` WHERE `regno`='$id'";
        $data = mysqli_query($con, $qur);
        foreach ($data as $row) {
      ?>

          <form action="vehical_info_cod.php" onsubmit="return validation()" method="POST">
          <div class="form-group">
            <label>Registration No </label>
            <input type="text" name="reg_no_ed" value="<?php echo $row['regno']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Chessee NO</label>
            <input type="text" name="cha_no_ed" value="<?php echo $row['chasee_no']; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Engine NO</label>
            <input type="text" name="eng_no_ed" value="<?php echo $row['engine_no']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Cylinder Capacity</label>
            <input type="text" name="ccap_ed" value="<?php echo $row['c_cap']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Vehical class</label>
            <select class="browser-default custom-select" name="vclass_ed" id="vclass_ed" required>
            <option value="<?php echo $row['v_class']; ?>"><?php echo $row['v_class']; ?></option>
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
          <div class="form-group">
            <label>FUEL Type</label>
            <select class="browser-default custom-select" name="ftype_ed" required>
            <option value="<?php echo $row['f_type']; ?>"><?php echo $row['f_type']; ?></option>
            <option value="P">Petrol</option>
            <option value="D">Diesel</option>
            </select>
          </div>
          <div class="form-group">
            <label>Country of Orgin</label>
            <input type="text" name="corgin_ed" value="<?php echo $row['c_origin']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Year of Manufacture</label>
            <input type="text" name="ymanu_ed" value="<?php echo $row['year_manu']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Country of Import</label>
            <input type="text" name="cimport_ed" value="<?php echo $row['c_import']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
          <div class="row">
          <div class="col">
          <label>Front Tyre Size</label>
            <input type="text" name="fttyre_ed" value="<?php echo $row['ty_fr']; ?>" class="form-control" required>
          </div>
          <div class="col">
          <label>Rear Tyre Size</label>
            <input type="text" name="raretyre_ed" value="<?php echo $row['ty_re']; ?>" class="form-control" required>
          </div>
          </div>
         </div>
         <div class="form-group">
          <div class="row">
          <div class="col">
          <label>Dual</label>
            <input type="text" name="dualtyre_ed" value="<?php echo $row['ty_du']; ?>" class="form-control" placeholder="" required>
          </div>
          <div class="col">
          <label>Single</label>
            <input type="text" name="singletyre_ed" value="<?php echo $row['ty_sin']; ?>" class="form-control" placeholder="" required>
          </div>
          </div>
         </div>
          <div class="form-group">
            <label>Date of First Regestration</label>
            <input type="date" name="dateofreg_ed" value="<?php echo $row['d_first_reg']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Current Owner Details</label>
            <input type="text" name="coad_ed" value="<?php echo $row['owner_add']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Make</label>
            <input type="text" name="make_ed" value="<?php echo $row['make']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Model</label>
            <input type="text" name="model_ed" value="<?php echo $row['model']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Current Location</label>
            <input type="text" name="clocation_ed" value="<?php echo $row['location']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Current Region</label>
            <input type="text" name="cregion_ed" value="<?php echo $row['region']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Cost of Vehicle /Purchase Price (mention gift if it is a gift)</label>
            <input type="text" name="covehicle_ed" value="<?php echo $row['vcost']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Engine No 2 (if replaced earlier)</label>
            <input type="text" name="eng2_ed" value="<?php echo $row['engine_second']; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>vehicle class by cmv</label>
            <input type="text" name="vccmv_ed" value="<?php echo $row['v_class_of']; ?>" class="form-control"  required>
          </div>

            <lable id="valid_edit" style="color:red;"></lable>
            <a href="vehical_info.php" class="btn btn-danger">CANCEL</a>
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