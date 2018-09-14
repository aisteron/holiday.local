<?php
include 'models/tour_model.php';

$tour = get_tour();


include "views/{$view}_view.php";