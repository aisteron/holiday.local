<div class="sidebar">
	<div class="wrapselect">
<?php 

	function draw_city()
	{
		// список городов из таблицы routes (маршруты экскурсии)
		global $connection;

		$query = "SELECT * FROM route";
		$cities = array();

		$res = mysqli_query($connection, $query);
		while ($row = mysqli_fetch_assoc($res)) {
			$cities[] = $row['city'];
		}

		foreach (array_unique($cities) as $key => $value) {
			echo '<option value="'.$key.'">'.$value.'</option>';
		}

	}

	?>				
			<select name="" id="">
				<?php draw_city();?>
			</select>
			</div>
		</div>