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

    }

    [WebMethod]
    public static void SendEmail(string subject, string body)
    {
        body = body.Replace("%20", " ");
        Email email1 = new Email("Asmbled@asmbled.com", "rjsherriff@gmail.com", subject, body);
        email1.Send();
        Email email2 = new Email("Asmbled@asmbled.com", "assembledmail@gmail.com", subject, body);
        email2.Send();
    }

    [WebMethod]
    public static void SaveUser(string name, string restaurant, string email)
    {
        HttpContext.Current.Session["name"] = name.Replace("%20", " ");
        HttpContext.Current.Session["restaurant"] = restaurant.Replace("%20", " ");
        HttpContext.Current.Session["email"] = email.Replace("%20", " ");
    }
}