using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = "";
        string restaurant = "";
        string email = "";

        if (HttpContext.Current.Session["name"] != null)
            name = HttpContext.Current.Session["name"].ToString();
        if (HttpContext.Current.Session["restaurant"] != null)
            restaurant = HttpContext.Current.Session["restaurant"].ToString();
        if (HttpContext.Current.Session["email"] != null)
            email = HttpContext.Current.Session["email"].ToString();

        if(!string.IsNullOrEmpty(name) || !string.IsNullOrEmpty(restaurant) || !string.IsNullOrEmpty(email))
        {
            NameTextbox.Value = name;
            RestaurantTextbox.Value = restaurant;
            EmailTextbox.Value = email;
        }
    }

    [WebMethod]
    public static void SendEmail(string subject, string body)
    {
        subject = subject.Replace("%20", " ");
        body = body.Replace("%20", " ");
        Email email1 = new Email("Review@asmbled.com", "rjsherriff@gmail.com", subject, body);
        //email1.Send();
        Email email2 = new Email("Review@asmbled.com", "assembledmail@gmail.com", subject, body);
        email2.Send();
    }
}