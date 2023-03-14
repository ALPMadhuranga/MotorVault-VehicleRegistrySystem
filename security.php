<?php
session_start();

include('Connection/connection.php');

if(!$_SESSION['username'])
{
    header('Location:login.php');
}

?>








