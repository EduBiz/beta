var y1 = 20;   // change the # on the left to adjuct the Y co-ordinate
(document.getElementById) ? dom = true : dom = false;

function hideIt() {
  if (dom) {document.getElementById("layer1").style.visibility='hidden';}
}

function showIt() {
  if (dom) {document.getElementById("layer1").style.visibility='visible';}
}

function placeIt() {
  if (dom && !document.all) {document.getElementById("layer1").style.top = window.pageYOffset + (window.innerHeight - (window.innerHeight-y1)) + "px";}
  if (document.all) {document.all["layer1"].style.top = document.documentElement.scrollTop + (document.documentElement.clientHeight - (document.documentElement.clientHeight-y1)) + "px";}
  window.setTimeout("placeIt()", 10); }
// -->