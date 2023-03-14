<?php

include('security.php');

if(isset($_POST['addbtn']))
{
    $regno = $_POST['regno'];
	$disposal_date = $_POST['disposal_date'];
	$name_bidder = $_POST['name_bidder'];
	$nic_no = $_POST['nic_no'];
	$bid_price = $_POST['bid_price'];

    $qur = "INSERT INTO `disposal`(`regno`, `disposal_date`, `name_bidder`, `nic_no`, `bid_price`) VALUES ('$regno', '$disposal_date', '$name_bidder', '$nic_no', '$bid_price')";
    $data = mysqli_query($con,$qur);

    if($data)
    {
        $qur = "UPDATE `vehical_info` SET `activeSS`='1' WHERE `regno` = '$regno'";
        $data = mysqli_query($con, $qur);
        $_SESSION['status'] = "successfully added to the database";
        $_SESSION['status_code'] = "success";
        header('Location:disposal.php');
    }
    else
    {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:disposal.php');
    }
}

if (isset($_POST['delete_btn'])) {
    $id = $_POST['delete_id'];
    $regno = $_POST['regno'];

    $qur = "DELETE FROM `disposal` WHERE `id`='$id'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $qur = "UPDATE `vehical_info` SET `activeSS`='0' WHERE `regno` = '$regno'";
        $data = mysqli_query($con, $qur);
        $_SESSION['status'] = "Data deleted successfully";
        $_SESSION['status_code'] = "success";
        header('Location:disposal.php');
    } else {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:disposal.php');
    }
}

if (isset($_POST['updatebtn'])) {
    $id = $_POST['edit_id'];
    $reg_id = $_POST['reg_id'];
    $regnoEd = $_POST['regnoEd'];
    $disposal_dateEd = $_POST['disposal_dateEd'];
    $name_bidderEd = $_POST['name_bidderEd'];
    $nic_noEd = $_POST['nic_noEd'];
    $bid_priceEd = $_POST['bid_priceEd'];

    $qur = "UPDATE `disposal` SET `regno`='$regnoEd', `disposal_date`='$disposal_dateEd',`name_bidder`='$name_bidderEd',`nic_no`='$nic_noEd',`bid_price`='$bid_priceEd' WHERE `ID`='$id'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $qur = "UPDATE `vehical_info` SET `activeSS`='0' WHERE `regno` = '$reg_id'";
        $data = mysqli_query($con, $qur);
        $qur2 = "UPDATE `vehical_info` SET `activeSS`='1' WHERE `regno` = '$regnoEd'";
        $data = mysqli_query($con, $qur2);
        $_SESSION['status'] = "Data updated successfully";
        $_SESSION['status_code'] = "success";
        header('Location:disposal.php');
    } else {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:disposal.php');
    }
}