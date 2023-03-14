<?php

include('security.php');

if(isset($_POST['addbtn']))
{
    $reg_no = $_POST['reg_no'];
    $g_name = $_POST['g_name'];
	$g_address = $_POST['g_address'];
	$driverComDate = $_POST['driverComDate'];
	$dateOfTbApproove = $_POST['dateOfTbApproove'];
	$dateOfHandover = $_POST['dateOfHandover'];
	$dateOfCompletion = $_POST['dateOfCompletion'];
    $descotbre = $_POST['descotbre'];
	$desofrepair = $_POST['desofrepair'];
	$date_sold = $_POST['date_sold'];
	$soldPrice = $_POST['soldPrice'];
	$replace_engine_no = $_POST['replace_engine_no'];
	$eng_purchase_date = $_POST['eng_purchase_date'];
	$dateofpay = $_POST['dateofpay'];
    $chequeno = $_POST['chequeno'];
	$gurantee_period = $_POST['gurantee_period'];
	$fullcost = $_POST['fullcost'];

    $qur = "INSERT INTO `repairs`(`reg_no`, `g_name`, `g_address`, `driverComDate`, `dateOfTbApproove`, `dateOfHandover`, `dateOfCompletion`, `descotbre`, `desofrepair`, `date_sold`, `soldPrice`, `replace_engine_no`, `eng_purchase_date`, `dateofpay`, `chequeno`, `gurantee_period`, `fullcost`) VALUES ('$reg_no','$g_name','$g_address','$driverComDate','$dateOfTbApproove','$dateOfHandover','$dateOfCompletion','$descotbre','$desofrepair','$date_sold','$soldPrice','$replace_engine_no','$eng_purchase_date','$dateofpay','$chequeno','$gurantee_period','$fullcost')";
    $data = mysqli_query($con,$qur);

    if($data)
    {
        $_SESSION['status'] = "successfully added to the database";
        $_SESSION['status_code'] = "success";
        header('Location:repair_info.php');
    }
    else
    {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:repair_info.php');
    }
}

if (isset($_POST['delete_btn'])) {
    $id = $_POST['delete_id'];

    $qur = "DELETE FROM `repairs` WHERE `ID`='$id'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $_SESSION['status'] = "Data deleted successfully";
        $_SESSION['status_code'] = "success";
        header('Location:repair_info.php');
    } else {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:repair_info.php');
    }
}

if (isset($_POST['updatebtn'])) {
    $id = $_POST['edit_id'];
    $reg_noEd = $_POST['reg_noEd'];
    $g_nameEd = $_POST['g_nameEd'];
    $g_addressEd = $_POST['g_addressEd'];
    $driverComDateEd = $_POST['driverComDateEd'];
    $dateOfTbApprooveEd = $_POST['dateOfTbApprooveEd'];
    $dateOfHandoverEd = $_POST['dateOfHandoverEd'];
    $dateOfCompletionEd = $_POST['dateOfCompletionEd'];
    $descotbreEd = $_POST['descotbreEd'];
    $desofrepairEd = $_POST['desofrepairEd'];
    $date_soldEd = $_POST['date_soldEd'];
    $soldPriceEd = $_POST['soldPriceEd'];
    $replace_engine_noEd = $_POST['replace_engine_noEd'];
    $eng_purchase_dateEd = $_POST['eng_purchase_dateEd'];
    $dateofpayEd = $_POST['dateofpayEd'];
    $chequenoEd = $_POST['chequenoEd'];
    $gurantee_periodEd = $_POST['gurantee_periodEd'];
    $fullcostEd = $_POST['fullcostEd'];

    $qur = "UPDATE `repairs` SET `reg_no`='$reg_noEd',`g_name`='$g_nameEd',`g_address`='$g_addressEd',`driverComDate`='$driverComDateEd',`dateOfTbApproove`='$dateOfTbApprooveEd',`dateOfHandover`='$dateOfHandoverEd',`dateOfCompletion`='$dateOfCompletionEd',`descotbre`='$descotbreEd',`desofrepair`='$desofrepairEd',`date_sold`='$date_soldEd',`soldPrice`='$soldPriceEd',`replace_engine_no`='$replace_engine_noEd',`eng_purchase_date`='$eng_purchase_dateEd',`dateofpay`='$dateofpayEd',`chequeno`='$chequenoEd',`gurantee_period`='$gurantee_periodEd',`fullcost`='$fullcostEd' WHERE `id` ='$id'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $_SESSION['status'] = "Data updated successfully";
        $_SESSION['status_code'] = "success";
        header('Location:repair_info.php');
    } else {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:repair_info.php');
    }
}