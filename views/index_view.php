<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<title>index_view</title>
	<link rel="stylesheet" href="/assets/css/style.css">

</head>
<body>
	<div class="wrap">
		<div class='bg'></div>
		<div class="nav">
			<ul>
				<li><a href="#">Экскурсии</a></li>
				<li><a href="#">Обо мне</a></li>
				<li><a href="#">Туры</a></li>
				<li><a href="#">Достопримечательности</a></li>
				<li><a href="#">Блог</a></li>
				<li>
					<select name="" id="">
						<option value="BYN">BYN</option>
						<option value="USD">USD</option>
						<option value="EUR">EUR</option>
						<option value="RUB">RUB</option>
					</select>
				</li>
			</ul>
		</div>
		<div class="sidebar">
			<div class="wrapselect">
			<select name="" id="">
				<option value="minsk">Минск</option>
				<option value="nesvizh">Несвиж</option>
				<option value="mir">Мир</option>
			</select>
			</div>
		</div>
		<div class="content">
			<ul>
			<?php 

			foreach ($exc_list as $key => $value) {
				echo '<li>'.$key.'. '.$value.'</li>';
			}

			 ?>
			</ul>
		</div>
	</div>
	<script src='/assets/js/custom.js' defer async></script>	
</body>
</html>