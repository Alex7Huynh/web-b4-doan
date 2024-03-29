﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
<style type="text/css">

	/* General */
	#cssdropdown, #cssdropdown ul { list-style: none; }
	#cssdropdown, #cssdropdown * { padding: 0; margin: 0; }
	
	/* Head links */
	#cssdropdown li.headlink { width: 220px; float: left; margin-left: -1px; border: 1px black solid; background-color: #e9e9e9; text-align: center; }
	#cssdropdown li.headlink a { display: block; padding: 15px; }

	/* Child lists and links */
	#cssdropdown li.headlink ul { display: none; border-top: 1px black solid; text-align: left; }
	#cssdropdown li.headlink:hover ul { display: block; color: Yellow;}
	#cssdropdown li.headlink ul li a { padding: 5px; height: 17px; }
	#cssdropdown li.headlink ul li a:hover { background-color: #333; }
	
	/* Pretty styling */
	body { font-family: verdana, arial, sans-serif; font-size: 0.8em; background-color: green; }
	#cssdropdown a { color: white; } #cssdropdown ul li a:hover { text-decoration: none; }
	#cssdropdown li.headlink { background-color: Teal; background-image: url(bg.gif); }
	#cssdropdown li.headlink ul { background-image: url(bg.gif); background-position: bottom; padding-bottom: 10px; }
</style>
<script language="JavaScript">
    window.onload = function() {
        var lis = document.getElementById('cssdropdown').getElementsByTagName('li');
        for (i = 0; i < lis.length; i++) {
            var li = lis[i];
            if (li.className == 'headlink') {
                li.onmouseover = function() { this.getElementsByTagName('ul').item(0).style.display = 'block'; }
                li.onmouseout = function() { this.getElementsByTagName('ul').item(0).style.display = 'none'; }
            }
        }
    }
    /* or with jQuery:
    $(document).ready(function() {
        $('#cssdropdown li.headlink').hover(
			function() { $('ul', this).css('display', 'block'); },
			function() { $('ul', this).css('display', 'none'); });
    });*/
	
</script>
<ul id="cssdropdown">

		<li class="headlink">

			<a href="http://google.com/">Search Engines</a>

			<ul>
				<li><a href="http://google.com/">Google</a></li>
				<li><a href="http://yahoo.com/">Yahoo</a></li>
				<li><a href="http://live.com/">Live Search</a></li>
			</ul>

		</li>
		<li class="headlink">
			<a href="http://shopping.com">Shopping</a>

			<ul>
				<li><a href="http://amazon.com/">Amazon</a></li>
				<li><a href="http://ebay.com/">eBay</a></li>
				<li><a href="http://craigslist.com/">CraigsList</a></li>

			</ul>
		</li>

	</ul>
</asp:Content>