<?php

function get_tour()
{
	global $connection;
	global $match;

	$query = "SELECT * FROM tour WHERE id =".$match['tour_alias'];

	$res = mysqli_query($connection, $query);

	while ($row = mysqli_fetch_assoc($res)) {

		return $row;
	}

}

//print_arr($match['tour_alias']);