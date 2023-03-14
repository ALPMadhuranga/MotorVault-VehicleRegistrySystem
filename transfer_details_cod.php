<?php

include('security.php');

if(isset($_POST['addbtn']))
{
    $reg_no = $_POST['reg_no'];
	$vclass = $_POST['vclass'];
	$date = $_POST['date'];
	$fw = $_POST['fw'];
	$tw = $_POST['tw'];
	$tr = $_POST['tr'];

    $qur = "INSERT INTO `tranfers`(`regno`, `transfer_date`, `fromwhere`, `towhere`, `toregion`) VALUES ('$reg_no', '$date', '$fw', '$tw', '$tr')";
    $data = mysqli_query($con,$qur);

    if($data)
    {
        $_SESSION['status'] = "successfully added to the database";
        $_SESSION['status_code'] = "success";
        header('Location:transfer_details.php');
    }
    else
    {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:transfer_details.php');
    }
}

if (isset($_POST['delete_btn'])) {
    $id = $_POST['delete_id'];

    $qur = "DELETE FROM `tranfers` WHERE `ID`='$id'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $_SESSION['status'] = "Data deleted successfully";
        $_SESSION['status_code'] = "success";
        header('Location:transfer_details.php');
    } else {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:transfer_details.php');
    }
}


if (isset($_POST['updatebtn'])) {
    $id = $_POST['edit_id'];
    $reg_no_ed = $_POST['reg_no_ed'];
    $date_ed = $_POST['date_ed'];
    $fw_ed = $_POST['fw_ed'];
    $tw_ed = $_POST['tw_ed'];
    $tr_ed = $_POST['tr_ed'];

    $qur = "UPDATE `tranfers` SET `regno`='$reg_no_ed', `transfer_date`='$date_ed',`fromwhere`='$fw_ed',`towhere`='$tw_ed',`toregion`='$tr_ed' WHERE `ID`='$id'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $_SESSION['status'] = "Data updated successfully";
        $_SESSION['status_code'] = "success";
        header('Location:transfer_details.php');
    } else {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:transfer_details.php');
    }
}
