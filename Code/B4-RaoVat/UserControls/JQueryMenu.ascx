<%@ Control Language="C#" AutoEventWireup="true" CodeFile="JQueryMenu.ascx.cs" Inherits="UserControls_JQueryMenu" %>
<%--<div id="accordion" style="width:150px">
<asp:Literal ID="LiteralJQueryMenu" runat="server"></asp:Literal>
</div>--%>
<script type="text/javascript" language="javascript" src="jquery.js"></script>
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
	width: 150px;
}
.menu_head {
	padding: 5px 10px;
	cursor: pointer;
	position: relative;
	margin:1px;
    font-weight:bold;
    background: #eef4d3 url(left.png) center right no-repeat;
}
.menu_body {
	display:none;
}
.menu_body a{
  display:block;
  color:#006699;
  background-color:#EFEFEF;
  padding-left:10px;
  font-weight:bold;
  text-decoration:none;
}
.menu_body a:hover{
  color: #000000;
  text-decoration:underline;
  }
</style>

<div style="float:left" > <!--This is the first division of left-->
  <p><strong>&nbsp;Works on clicking </strong></p>

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
</div>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit"%>

<link type="text/css" rel="Stylesheet" href="_assets/css/accordion.css" />
    
<ajaxToolkit:Accordion 
    ID="accordion" runat="server" 
    FadeTransitions="false" FramesPerSecond="100" TransitionDuration="250" 
    CssClass="accordion" HeaderCssClass="header" ContentCssClass="content" 
    RequireOpenedPane="True" AutoSize="None">
    <Panes>
        <ajaxToolkit:AccordionPane ID="mail" runat="server">
            <Header>
                <div style="background-image:url(_assets/img/mail_large.gif)">
                    <span>Mail</span>
                </div>
            </Header>
            <Content>
            <asp:ListView ID="lvMailItems" runat="server">
                <LayoutTemplate>
                    <ul>
                        <li id="itemPlaceholder" runat="server" />
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li style='background-image:url(<%# Eval("ImageUrl") %>)'><%# Eval("Name") %></li>
                </ItemTemplate>
            </asp:ListView>
            </Content>
        </ajaxToolkit:AccordionPane>
        <ajaxToolkit:AccordionPane ID="notes" runat="server">
            <Header>
                <div style="background-image:url(_assets/img/notes_large.gif)">
                    <span>Notes</span>
                </div>
            </Header>
            <Content>
            <asp:ListView ID="lvNoteItems" runat="server">
                <LayoutTemplate>
                    <ul>
                        <li id="itemPlaceholder" runat="server" />
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li style='background-image:url(<%# Eval("ImageUrl") %>)' title='<%# Eval("Name")%>'><%# Eval("Name") %></li>
                </ItemTemplate>
            </asp:ListView>
            </Content>
        </ajaxToolkit:AccordionPane> 
        <ajaxToolkit:AccordionPane ID="contacts" runat="server">
            <Header>
                <div style="background-image:url(_assets/img/contact_large.gif)">
                    <span>Contacts</span>
                </div>
            </Header>
            <Content>
            <asp:ListView ID="lvContactItems" runat="server">
                <LayoutTemplate>
                    <ul>
                        <li id="itemPlaceholder" runat="server" />
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li style='background-image:url(<%# Eval("ImageUrl") %>)' title='<%# Eval("Name")%>'><%# Eval("Name") %></li>
                </ItemTemplate>
            </asp:ListView>                        
            </Content>
        </ajaxToolkit:AccordionPane>  
    </Panes>
</ajaxToolkit:Accordion>--%>