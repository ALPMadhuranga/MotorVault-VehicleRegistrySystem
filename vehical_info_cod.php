<?php

include('security.php');

if(isset($_POST['vehicleinfo']))
{
    $reg_no = $_POST['reg_no'];
	$cha_no = $_POST['cha_no'];
	$eng_no = $_POST['eng_no'];
	$ccap = $_POST['ccap'];
	$vclass = $_POST['vclass'];
	$ftype = $_POST['ftype'];
	$corgin = $_POST['corgin'];
	$ymanu = $_POST['ymanu'];
	$cimport = $_POST['cimport'];
	$fttyre = $_POST['fttyre'];
	$raretyre = $_POST['raretyre'];
	$dualtyre = $_POST['dualtyre'];
	$singletyre = $_POST['singletyre'];
	$dateofreg = $_POST['dateofreg'];
	$coad = $_POST['coad'];
	$make = $_POST['make'];
	$model = $_POST['model'];
	$clocation = $_POST['clocation'];
	$cregion = $_POST['cregion'];
	$covehicle = $_POST['covehicle'];
	$eng2 = $_POST['eng2'];
	$vccmv = $_POST['vccmv'];

    $qur = "INSERT INTO `vehical_info` (`regno`, `chasee_no`, `engine_no`, `c_cap`, `v_class`, `f_type`, `c_origin`, `year_manu`, `c_import`, `ty_fr`, `ty_re`, `ty_du`, `ty_sin`, `d_first_reg`, `owner_add`, `make`, `model`, `location`, `region`, `vcost`, `engine_second`, `v_class_of`) VALUES ('$reg_no', '$cha_no', '$eng_no', '$ccap', '$vclass', '$ftype', '$corgin', '$ymanu', '$cimport', '$fttyre', '$raretyre', '$dualtyre', '$singletyre', '$dateofreg', '$coad', '$make', '$model', '$clocation', '$cregion', '$covehicle', '$eng2','$vccmv')";
    $data = mysqli_query($con,$qur);

    if($data)
    {
        $_SESSION['status'] = "successfully added to the database";
        $_SESSION['status_code'] = "success";
        header('Location:vehical_info.php');
    }
    else
    {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:vehical_info.php');
    }
}


if (isset($_POST['delete_btn'])) {
    $id = $_POST['delete_id'];

    $qur = "DELETE FROM `vehical_info` WHERE `regno`='$id'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $_SESSION['status'] = "Data deleted successfully";
        $_SESSION['status_code'] = "success";
        header('Location:vehical_info.php');
    } else {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:vehical_info.php');
    }
}


if (isset($_POST['updatebtn'])) {
    $reg_no_ed = $_POST['reg_no_ed'];
	$cha_no_ed = $_POST['cha_no_ed'];
	$eng_no_ed = $_POST['eng_no_ed'];
	$ccap_ed = $_POST['ccap_ed'];
	$vclass_ed = $_POST['vclass_ed'];
	$ftype_ed = $_POST['ftype_ed'];
	$corgin_ed = $_POST['corgin_ed'];
	$ymanu_ed = $_POST['ymanu_ed'];
	$cimport_ed = $_POST['cimport_ed'];
	$fttyre_ed = $_POST['fttyre_ed'];
	$raretyre_ed = $_POST['raretyre_ed'];
	$dualtyre_ed = $_POST['dualtyre_ed'];
	$singletyre_ed = $_POST['singletyre_ed'];
	$dateofreg_ed = $_POST['dateofreg_ed'];
	$coad_ed = $_POST['coad_ed'];
	$make_ed = $_POST['make_ed'];
	$model_ed = $_POST['model_ed'];
	$clocation_ed = $_POST['clocation_ed'];
	$cregion_ed = $_POST['cregion_ed'];
	$covehicle_ed = $_POST['covehicle_ed'];
	$eng2_ed = $_POST['eng2_ed'];
	$vccmv_ed = $_POST['vccmv_ed'];

    $qur = "UPDATE `vehical_info` SET `regno`='$reg_no_ed',`chasee_no`='$cha_no_ed',`engine_no`='$eng_no_ed',`c_cap`='$ccap_ed',`v_class`='$vclass_ed',`f_type`='$ftype_ed',`c_origin`='$corgin_ed',`year_manu`='$ymanu_ed',`c_import`='$cimport_ed',`ty_fr`='$fttyre_ed',`ty_re`='$raretyre_ed',`ty_du`='$dualtyre_ed',`ty_sin`='$singletyre_ed',`d_first_reg`='$dateofreg_ed',`owner_add`='$coad_ed',`make`='$make_ed',`model`='$model_ed',`location`='$clocation_ed',`region`='$cregion_ed',`vcost`='$covehicle_ed',`engine_second`='$eng2_ed',`v_class_of`='$vccmv_ed' WHERE `regno`='$reg_no_ed'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $_SESSION['status'] = "Data updated successfully";
        $_SESSION['status_code'] = "success";
        header('Location:vehical_info.php');
    } else {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:vehical_info.php');
    }
}