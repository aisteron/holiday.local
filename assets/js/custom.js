var select = document.querySelector('.select-container select');

select.addEventListener('change', function(){

	console.log(this.options[this.selectedIndex]);

});