<?php 
error_reporting(E_ALL);
include 'phpQuery-onefile.php';
include 'config.php';
include 'functions.php';
include 'routing.php';



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


// заполним табличку route
// пройдемся по ссылкам source_url из таблицы tour

function route_insert()
{
	global $connection;
	
	$query = "SELECT id, source_url FROM tour";
	$res = mysqli_query($connection, $query);
	while($row = mysqli_fetch_assoc($res))
	{
			//echo $row['source_url'].'<br>';
			//print_arr($row);

		$source_url = file_get_contents($row['source_url']);
		$document = phpQuery::newDocument($source_url);

		$route_items = $document->find('.tour-card-facilities__route-items')->text();;
		$route_items_array = explode('—', $route_items);
		
		foreach ($route_items_array as $key => $value) {
			//echo rtrim($value).'<br/>';
			$value = str_replace(' ','',$value);
			$value = trim(preg_replace('/\s\s+/', ' ', $value));

			$sql = "INSERT INTO route (tour_id, city) VALUES ('{$row['id']}', '{$value}')";

			if (mysqli_query($connection, $sql)) {
			    echo "New record created successfully <br />";
			} else {
			    echo "Error: " . $sql . "<br>" . mysqli_error($connection).'<br>';
			}
		}
	}
} //route_insert()

//route_insert();


