<?php

function checkLoggedIn() {
    if (isset($_SESSION['IS_LOGGED'])) {
        return $_SESSION['IS_LOGGED'];
    } else {
        return false;
    }
}