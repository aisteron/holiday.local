<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<title>index_view</title>
	<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
	<div class="wrap">
		<div class="nav">
			<ul>
				<li><a href="#">Главная</a></li>
				<li><a href="#">О нас</a></li>
				<li><a href="#">Контакты</a></li>
				<li><a href="#">Еще</a></li>
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
</body>
</html>