<?php
require_once "./auth.php";
//create object of a auth
$user = new Auth();


if (isset($_POST["action"]) && $_POST["action"] == "feedback") {
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";
}
