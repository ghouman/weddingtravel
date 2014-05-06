// JavaScript Document
function changeWH() {
			var cWidth = document.documentElement.clientWidth;
			var lefts=(cWidth-960)/2+970;
			document.getElementById("buoy").style.left = lefts + 'px';
		}
		window.onresize = function() {
			changeWH();
		}
		$(document).ready(function() {
    		changeWH();
			$("input[type=password]").addClass(".input");
                    $("input[type=text]").focus(function () {
                        if ($(this).hasClass("Wdate")) {

                            $(this).addClass("Wdate_h");
                        }
                        else {
                            $(this).addClass("input_h");
                        }

                    });
                    $("input[type=text]").blur(function () {
                        if ($(this).hasClass("Wdate")) {

                            $(this).removeClass("Wdate_h");
                        }
                        else {
                            $(this).removeClass("input_h");
                        }
                    });
                    $("input[type=password]").focus(function () {
                        $(this).addClass("input_h");
                    });

                    $("input[type=password]").blur(function () {
                        $(this).removeClass("input_h");
                    });

                    $("textarea").focus(function () {
                        $(this).addClass("textarea_h");
                    });

                    $("textarea").blur(function () {
                        $(this).removeClass("textarea_h");
                    });
		})
