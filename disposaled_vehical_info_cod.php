<?php

include('security.php');

if (isset($_POST['delete_btn'])) {
    $regno = $_POST['regno'];

    $qur = "DELETE FROM `vehical_info` WHERE `regno`='$regno'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $qur = "DELETE FROM `disposal` WHERE `regno`='$regno'";
        $data = mysqli_query($con, $qur);
        $_SESSION['status'] = "Data deleted successfully";
        $_SESSION['status_code'] = "success";
        header('Location:disposaled_vehical_info.php');
    } else {
        $_SESSION['status_02'] = "Something went wrong";
        $_SESSION['status_code'] = "error";
        header('Location:disposaled_vehical_info.php');
    }
}