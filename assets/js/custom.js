var select = document.querySelector('.wrapselect select');

select.addEventListener('change', function(){

	console.log(this.options[this.selectedIndex]);

});