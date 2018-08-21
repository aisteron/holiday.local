<?php
include 'models/index_model.php';

// выведем на главной странице просто список экскурсий

$exc_list = exc_list();
// функцию обращения к бд мы будем хранить в модели index_model.php
//  а саму переменную $exc_list будем использовать в виде index_view.php











include "views/{$view}_view.php";