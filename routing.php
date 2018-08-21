<?php

// функция роутинга (маршрутизации)
// путь к скрипту без имени домена

$url = $_SERVER['REQUEST_URI'];

$routes = array(
	array('url' => '#\/$|\?#', 'view' => 'index'),
	array('url' => '#product/(?P<product_alias>[a-z0-9-]+)#i', 'view' => 'product'),
	array('url' => '#category/(?P<id>\d+)#', 'view' => 'category'),
	
);
foreach ($routes as $route) {
	if(preg_match($route['url'], $url, $match))
	{
		$view = $route['view'];
		break;
	}
}
if(empty($match))
{
	include 'views/404.php';
	exit;
}

extract($match);

include 'controllers/'.$view.'_controller.php';