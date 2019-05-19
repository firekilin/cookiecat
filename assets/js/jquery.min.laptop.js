var x=0,y=0;
var q=document.getElementById("laptop");
var w=document.getElementById("easter");
var e=document.getElementById("laptop2");
$(document).ready(function(){
   window.onresize = function onresize() {     
		var device = detectZoom.device();
		if(device>4)
		{
			x=1;
		}
		if(device<0.35)
		{
			y=1;
		}
		if(x==1&&y==1)
		{
			w.style.display="block";
		}
	}    
	$(window).resize(function() {
        var hei=$(window).height();
        if(hei<50)
		{
			q.style.display="block";
		}
		
    });

});
function laptop2()
{
    e.style.display='block';
}
function laptop3()
{
    alert("再接再厲喔");
}