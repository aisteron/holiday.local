<?php 
include '/templates/header.php';
include '/templates/sidebar.php';
//include '/templates/bread.php';
?>

		<div class="content">
			<ul>
				<?php 

				foreach ($exc_list as $key => $value) {
					echo '<li><a href="/tour/'.$key.'">'.$value.'</a></li>';
				}

				 ?>
			</ul>
		</div><!--/.content-->
	</div><!--/.wrap-->
	<script src='/assets/js/custom.js' defer async></script>	
</body>
</html>