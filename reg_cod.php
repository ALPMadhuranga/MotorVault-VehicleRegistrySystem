<?php

include('security.php');

if (isset($_POST["registerbtn"])) {
    $username = $_POST['username'];
    $password = md5($_POST['password']);
    $cpassword = md5($_POST['confirmpassword']);

    $username_query = "SELECT * FROM `admin` WHERE `username`='$username'";
    $username_query_run = mysqli_query($con, $username_query);
    if (mysqli_num_rows($username_query_run) > 0) {
        $_SESSION['status_02'] =  "User Name Already Taken, Please Try Another";
        $_SESSION['status_code'] = "error";
        header('Location:reg.php');
    } else {
        if ($password === $cpassword) {

            $qur = "INSERT INTO `admin`(`username`, `passcode`) VALUES ('$username', '$password')";
            $data = mysqli_query($con, $qur);
            $_SESSION['status'] = "Data added successfully";
            $_SESSION['status_code'] = "success";
            header('Location:reg.php');

        } else {
            $_SESSION['status_02'] = "Password Does Not Match";
            $_SESSION['status_code'] = "warning";
            header('Location:reg.php');
        }
    }
}





if (isset($_POST['updatebtn'])) {
    $id = $_POST['edit_id'];
    $username = $_POST['edit_username'];
    $password = md5($_POST['edit_password']);

    $qur = "UPDATE `admin` SET `username`='$username',`passcode`='$password' WHERE `id`='$id'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $_SESSION['status'] = "Data updated successfully";
        $_SESSION['status_code'] = "success";
        header('Location:reg.php');
    } else {
        $_SESSION['status'] = "Something went wrong";
        $_SESSION['status_02'] = "error";
        header('Location:reg.php');
    }
}


if (isset($_POST['delete_btn'])) {
    $id = $_POST['delete_id'];

    $qur = "DELETE FROM `admin` WHERE `id`='$id'";
    $data = mysqli_query($con, $qur);

    if ($data) {
        $_SESSION['status'] = "Data deleted successfully";
        $_SESSION['status_code'] = "success";
        header('Location:reg.php');
    } else {
        $_SESSION['status'] = "Something went wrong";
        $_SESSION['status_02'] = "error";
        header('Location:reg.php');
    }
}


if (isset($_POST['login_btn'])) {
    $username_login = $_POST['username'];
    $password_login = $_POST['password'];
    $password = md5($_POST['password']);

    $qur = "SELECT * FROM `admin` WHERE `username` = '$username_login' AND `passcode` = '$password'";
    $data = mysqli_query($con, $qur);

    if (mysqli_num_rows($data) > 0) {
        $_SESSION['username'] = $username_login;
        $_SESSION['status'] = "Welcome " . $username_login . " ";
        $_SESSION['status_code'] = "success";
        header("Location:index.php");
    } else {
        $_SESSION['status'] = "User Name or Password is Invalid";
        $_SESSION['status_02'] = "error";
        header("Location:login.php");
    }
}


