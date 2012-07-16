using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Globalization;

/// <summary>
/// Summary description for ErrHandler
/// </summary>
public class ErrHandler
{
    public ErrHandler()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    /// Handles error by accepting the error message 
    /// Displays the page on which the error occured
    public static void WriteError(string errorMessage)
    {
        try
        {
            string path = "~/Error/errorlog.txt";
            if (!File.Exists(System.Web.HttpContext.Current.Server.MapPath(path)))
            {
                return;
                //File.Create(System.Web.HttpContext.Current.Server.MapPath(path)).Close();
            }
            using (StreamWriter w = File.AppendText(System.Web.HttpContext.Current.Server.MapPath(path)))
            {
                w.WriteLine("\r\nLog Entry : ");
                w.WriteLine("{0}", DateTime.Now.ToString(CultureInfo.InvariantCulture));
                string err = "Error in: " + System.Web.HttpContext.Current.Request.Url.ToString() +
                              ". Error Message:" + errorMessage;
                w.WriteLine(err);
                w.WriteLine("__________________________");
                w.Flush();
                w.Close();
            }
        }
        catch (Exception ex)
        {
        }

    }

}