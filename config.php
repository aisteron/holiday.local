<?php
define("DBHOST", "localhost");
define("DBPASS", "");
define("DBUSER", "root");
define("DB", "holiday");


$connection = @mysqli_connect(DBHOST, DBUSER, DBPASS, DB) or die('Ошибка соединения с БД');
mysqli_set_charset($connection, "utf8") or die('Не установлена кодировка соединения');

