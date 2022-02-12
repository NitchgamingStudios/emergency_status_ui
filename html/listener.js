$(function(){
	window.onload = (e) => {
        window.addEventListener('message', (event) => {
            //document.querySelector("#logo").innerHTML = " "
			var item = event.data;
			if (item !== undefined && item.type === "ui") {
				if (item.display === true) {
                    $("#container").show();
				} else{
                    $("#container").hide();
                }
			}
		});
	};
});	