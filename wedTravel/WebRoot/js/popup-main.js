var popup_dragging = false;
var popup_target;
var popup_mouseX;
var popup_mouseY;
var popup_mouseposX;
var popup_mouseposY;
var popup_oldfunction;
function popup_display(x) {
    var win = window.open();
    for (var i in x) win.document.write(i + ' = ' + x[i] + '<br>');
}
function popup_mousedown(e) {
    var ie = navigator.appName == "Microsoft Internet Explorer";
    if (ie && window.event.button != 1) return;
    if (!ie && e.button != 0) return;
    popup_dragging = true;
    popup_target = this['target'];
    popup_mouseX = ie ? window.event.clientX : e.clientX;
    popup_mouseY = ie ? window.event.clientY : e.clientY;
    if (ie)
        popup_oldfunction = document.onselectstart;
    else popup_oldfunction = document.onmousedown;
    if (ie)
        document.onselectstart = new Function("return false;");
    else document.onmousedown = new Function("return false;");
}
function popup_mousemove(e) {
    if (!popup_dragging) return;
    var ie = navigator.appName == "Microsoft Internet Explorer";
    var element = document.getElementById(popup_target);
    var mouseX = ie ? window.event.clientX : e.clientX;
    var mouseY = ie ? window.event.clientY : e.clientY;
    element.style.left = (element.offsetLeft + mouseX - popup_mouseX) + 'px';
    element.style.top = (element.offsetTop + mouseY - popup_mouseY) + 'px';
    popup_mouseX = ie ? window.event.clientX : e.clientX;
    popup_mouseY = ie ? window.event.clientY : e.clientY;
}

function popup_mouseup(e) {
    if (!popup_dragging) return;
    popup_dragging = false;
    var ie = navigator.appName == "Microsoft Internet Explorer";
    var element = document.getElementById(popup_target);
    if (ie)
        document.onselectstart = popup_oldfunction;
    else document.onmousedown = popup_oldfunction;
}
function popup_exit() {
    $("#shade").hide();
    $("#popup").hide();
}
function popup_exit2() {
	$("#shade1").hide();
    $("#popup2").hide();
}

function popup_show(id) {
    element = document.getElementById('popup'+id);
    drag_element = document.getElementById('popup_drag'+id);
    exit_element = document.getElementById('popup_exit'+id);
    var num = 1;
    element.style.position = "absolute";
    element.style.visibility = "visible";
    element.style.display = "block";
    var popupWidth = $("#popup"+id).width();
    var popupHeight = $("#popup"+id).height();
    element.style.left = document.documentElement.scrollLeft + (document.documentElement.clientWidth - popupWidth) / 2 + "px";
    element.style.top = document.documentElement.scrollTop + (document.documentElement.clientHeight - popupHeight) / 2 + "px";
    drag_element['target'] = 'popup'+id;
    drag_element.onmousedown = popup_mousedown;
    exit_element.onclick = popup_exit;
	if(id==0)
	{
	 	set_popup_size(id,700, 515);
	}
	if(id==1)
	{
	 	set_popup_size(id,400, 260);
	}
	if(id==2)
	{
	 	set_popup_size(id,400, 260);
	}
	if(id==3)
	{
	 	set_popup_size(id,540, 260);
	}
	if(id==4)
	{
	 	set_popup_size(id,600, 380);
	}
	 
}
 function set_popup_size(id,width, height) {
		 //alert(id);
		var popup="#popup"+id;
		var popup_drag="#popup_drag"+id;
		$(popup).width(width + "px");
    	$(popup).height(height + "px");
		var hHeight = document.documentElement.clientHeight;
		var hWidth = document.documentElement.clientWidth;
		var bottoms=(hHeight-height)/2+"px";
		var lefts=(hWidth-width)/2+"px";
		//alert(tops+"&"+lefts);
		document.getElementById("popup"+id).style.bottom=bottoms;
		document.getElementById("popup"+id).style.left=lefts;
		//$(popup).attr("top",tops);
		//$(popup).attr("left",lefts);
       
    }

function popup_mousepos(e) {
    var ie = navigator.appName == "Microsoft Internet Explorer";
    popup_mouseposX = ie ? window.event.clientX : e.clientX;
    popup_mouseposY = ie ? window.event.clientY : e.clientY;
}
if (navigator.appName == "Microsoft Internet Explorer")
    document.attachEvent('onmousedown', popup_mousepos);
else document.addEventListener('mousedown', popup_mousepos, false);
if (navigator.appName == "Microsoft Internet Explorer")
    document.attachEvent('onmousemove', popup_mousemove);
else document.addEventListener('mousemove', popup_mousemove, false);
if (navigator.appName == "Microsoft Internet Explorer")
    document.attachEvent('onmouseup', popup_mouseup);
else document.addEventListener('mouseup', popup_mouseup, false);

function show_popup(id) {
		 
		var shade="#shade"+id;
        $(shade).show();
        /*纠正IE6下遮罩失效的BUG*/
        var body_width = $("body").width();
        var body_height = $("body").height();

        //var min_height = document.documentElement.scrollTop + (document.documentElement.clientHeight);
        var min_height = document.body.scrollHeight;/*得到整个页面的高度*/
        if (body_height <= min_height) {
            body_height = min_height;
        }

        var min_width = document.documentElement.scrollLeft + (document.documentElement.clientWidth);
        if (body_width <= min_width) {
            body_width = min_width;
        }

        $(shade).width(body_width + "px");
        $(shade).height(body_height + "px");
        popup_show(id);
    }
