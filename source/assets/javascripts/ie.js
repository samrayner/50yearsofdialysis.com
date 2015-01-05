var $buoop = {
  i: 6,
  reminder: 0,
  text: '<strong>Looks like you\'re using Internet Explorer.</strong> If only the NHS would upgrade! This site will work better in <a href="http://www.google.com/chrome/">Google Chrome</a> if you have that installed :)'
};
function $buo_f(){
 var e = document.createElement("script");
 e.src = "//browser-update.org/update.js";
 document.body.appendChild(e);
};
try {document.addEventListener("DOMContentLoaded", $buo_f,false)}
catch(e){window.attachEvent("onload", $buo_f)}
