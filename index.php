<?php 
error_reporting(E_ALL);
include 'phpQuery-onefile.php';
include 'config.php';



  // заполним табличку tours
  /*
  *
  *			id | name | price | source_url | route_id
  *
  *
  *
  */


function tours_insert()
	{

	$holiday_main = file_get_contents('https://www.holiday.by/countries/Belarus/tours');
	$document = phpQuery::newDocument($holiday_main);

	$tour_list = $document->find('div#search-results .tour-thumbnail ');
	
	

	function draw_tours($tour_list)
	{
		//global $tour_list;
		//print_r($tour_list);
		/*	global $a;
		echo $a;

		exit;*/

		$counter = 1;
		echo '<table border="1">';
		foreach ($tour_list as $el) {

			$link = explode("#", pq($el)->find('.tour-thumbnail__name-link')->attr('href'));
			$link = 'https://holiday.by'.$link[0];
			echo '<tr>
					<td>'.$counter.'</td>
					<td>'.pq($el)->find('.tour-thumbnail__name-link')->attr('title').'</td>
					<td>'.$link.'</td>
					<td>'.pq($el)->find('.tour-thumbnail__price-value b')->text().'</td>
				  </tr>	




			';
			$counter++;

		  }

		  echo '</table>';
	}

	function insert_tours($tour_list)
	{
		//			id | name | price | source_url | route_id

		//print_r($tour_list);
		global $connection;

		foreach ($tour_list as $el) {

			$name = pq($el)->find('.tour-thumbnail__name-link')->attr('title');

			$source_url = explode("#", pq($el)->find('.tour-thumbnail__name-link')->attr('href'));
			$source_url = 'https://holiday.by'.$source_url[0];

			$price = pq($el)->find('.tour-thumbnail__price-value b')->text();




			$sql = "INSERT INTO tour (name, price, source_url) VALUES ('{$name}', '{$price}', '{$source_url}')";

			if (mysqli_query($connection, $sql)) {
			    echo "New record created successfully";
			} else {
			    echo "Error: " . $sql . "<br>" . mysqli_error($connection).'<br>';
			}


		}
	} // insert_tours();

	

	//draw_tours($tour_list);
	//insert_tours($tour_list);






	} // tours_insert()

//tours_insert();
