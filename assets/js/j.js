console.log('%c請勿使用此地方','color:red;font-size:40px');
console.log('%c麒麟真棒','color:purple;font-size:40px');
console.log('%c這%c不%c是%c彩%c蛋%c喔','color:purple;font-size:20px','color:red;font-size:25px','color:orange;font-size:30px','color:green;font-size:35px','color:blue;font-size:40px','color:purple;font-size:45px');


function show( id)
{
  var o=document.getElementById(id);
  if( o.style.width=="32%" )
  {
    o.style.width='80%';
	o.style.position='fixed';
	o.style.left='50%';
	o.style.top='50%';
	o.style.marginLeft='-40%';
	o.style.marginTop='-40%';
  }
  else
  {
    o.style.width='32%';
	o.style.position='';
	o.style.left='';
	o.style.top='';
	o.style.marginLeft='';
	o.style.marginTop='';
  }
}
