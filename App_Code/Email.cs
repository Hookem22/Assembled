﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;

/// <summary>
/// Summary description for Email
/// <summary>
public class Email
{
    #region Properties

    public string MessageFrom { get; set; }
    public string MessageTo { get; set; }
    public string Subject { get; set; }
    public string Body { get; set; }
    
    #endregion //Properties

    #region Constructors

    public Email()
    {
        MessageFrom = "";
        MessageTo = "";
        Subject = "";
        Body = "";
    }
    public Email(string messageFrom, string messageTo, string subject, string body)
    {
        MessageFrom = messageFrom;
        MessageTo = messageTo;
        Subject = subject;
        Body = body;
    }
    #endregion //Constructors


    public void Send()
    {
        try
        {
            MailMessage message = new MailMessage();
            message.From = new MailAddress(MessageFrom);
            message.To.Add(new MailAddress(MessageTo));
            message.Subject = Subject;
            message.Body = Body;
            message.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("mail.nightshade.arvixe.com");
            smtp.Credentials = new System.Net.NetworkCredential("bob@asmbled.com", "emmitt22");
            smtp.Port = 25;
            smtp.EnableSsl = false;
            smtp.Send(message);

            //SmtpClient smtp = new SmtpClient("smtp.sendgrid.net");
            //smtp.Credentials = new System.Net.NetworkCredential("drafterparty", "emmitt22");
            //smtp.Port = 25;
            //smtp.EnableSsl = false;
            //smtp.Send(message);
        }
        catch
        {
        }
        //SmtpClient smtp = new SmtpClient("mail.olive.arvixe.com");
        //smtp.Credentials = new System.Net.NetworkCredential("will@neighborbillparks.com", "emmitt22");
        //smtp.Port = 25;
        //smtp.EnableSsl = false;
        //smtp.Send(message);
    }
}
