$(function () {
	window.onload = (e) => {
		window.addEventListener('message', (event) => {
			//document.querySelector("#logo").innerHTML = " "
			var item = event.data;
			if (item !== undefined && item.type === "ui") {
				$("#container").toggle();
			}
		});
	};
});	