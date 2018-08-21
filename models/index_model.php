<?php

function exc_list()
{
	global $connection;

	$query = "SELECT id, name FROM tour";
	$res = mysqli_query($connection, $query);
	$exc_list_array = array();
	while ($row = mysqli_fetch_assoc($res)) {
		//echo $row['id']. ' - '. $row['name'].'<br/>';
		$exc_list_array[$row['id']] = $row['name'];
	}

	return $exc_list_array;

}

