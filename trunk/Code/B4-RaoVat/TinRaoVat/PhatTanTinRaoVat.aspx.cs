using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using BUS;
using DAO;

public partial class XemDanhSachTinRaoVat : BUS.BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RSS rss = new RSS();
        rss.NewRSS();
        RSS.RssChannel channel = new RSS.RssChannel();

        channel.Title = "Website Rao Vặt";
        channel.Link = "http://localhost:3866/B4-RaoVat/Default.aspx";
        channel.Description = "Website Đăng tin rao vặt.";
        rss.AddRssChannel(channel);

        RSS.RssItem item = new RSS.RssItem();
        item.Title = "Home";
        item.Link = "http://localhost:3866/B4-RaoVat/Default.aspx";
        item.Description = "Trang chủ tin rao vặt.";
        rss.AddRssItem(item);

        RSS.RssItem item1 = new RSS.RssItem();
        item1.Title = "Xem nội dung tin rao vặt.";
        item1.Link = "http://localhost:3866/B4-RaoVat/DanhMuc/XemNoiDungTin.aspx";
        item1.Description = "Các tin rao vặt được đăng mới nhất";
        rss.AddRssItem(item1);
        
        Response.Clear();
        Response.ContentType = "text/xml";
        Response.Write(rss.RssDocument);
        Response.End();
    }   
}