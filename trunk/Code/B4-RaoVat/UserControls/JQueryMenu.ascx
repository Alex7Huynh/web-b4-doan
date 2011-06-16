<%@ Control Language="C#" AutoEventWireup="True" CodeFile="JQueryMenu.ascx.cs" Inherits="UserControls_JQueryMenu" %>

<asp:Literal ID="LiteralJQueryMenu" runat="server"></asp:Literal>

<%--<script type="text/javascript" language="javascript" src="jquery.js"></script>
<script type="text/javascript">
<!--    //---------------------------------+
    //  Developed by Roshan Bhattarai 
    //  Visit http://roshanbh.com.np for this script and more.
    //  This notice MUST stay intact for legal use
    // --------------------------------->
    $(document).ready(function() {
        //slides the element with class "menu_body" when paragraph with class "menu_head" is clicked 
        $("#firstpane p.menu_head").click(function() {
            $(this).css({ backgroundImage: "url(down.png)" }).next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
            $(this).siblings().css({ backgroundImage: "url(left.png)" });
        });
        //slides the element with class "menu_body" when mouse is over the paragraph
        $("#secondpane p.menu_head").mouseover(function() {
            $(this).css({ backgroundImage: "url(down.png)" }).next("div.menu_body").slideDown(500).siblings("div.menu_body").slideUp("slow");
            $(this).siblings().css({ backgroundImage: "url(left.png)" });
        });
    });
</script>
<style type="text/css">
.menu_list {	
	width: 198px;
}
.menu_head {
	cursor: pointer;
	position: relative;
	margin:1px;
    font-weight:bold;
    background: #eef4d3 url(left.png) center right no-repeat;
    width: 198px;
    height: 25px;
}
.menu_body {
	display:none;
	width: 198px;
}
.menu_body a{
  display:block;
  color:#006699;
  background-color:#EFEFEF;
  font-weight:bold;
  text-decoration:none;
  width: 198px;
}
.menu_body a:hover{
  color: #000000;
  text-decoration:underline;
  }
</style>
<div style="float:left" >
  <div id="firstpane" class="menu_list"> <!--Code for menu starts here-->
		<p class="menu_head">Header-1</p>
		<div class="menu_body">
		<a href="#">Link-1</a>
         <a href="#">Link-2</a>
         <a href="#">Link-3</a>	
		</div>

		<p class="menu_head">Header-2</p>
		<div class="menu_body">
			<a href="#">Link-1</a>
         <a href="#">Link-2</a>
         <a href="#">Link-3</a>	
		</div>
		<p class="menu_head">Header-3</p>

		<div class="menu_body">
          <a href="#">Link-1</a>
         <a href="#">Link-2</a>
         <a href="#">Link-3</a>			
       </div>
  </div>  <!--Code for menu ends here-->
</div>--%>