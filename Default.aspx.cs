using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("Funds/NewFund.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FillListBoxRandom();
    }

    private readonly string[] NAMES = new string[] { 
    "Mark", "Tom", "Harry", "Sally", "Sandra", "Paul", "Anastasia" };

    /// <summary>
    /// This task is running 3 seconds pretending a long-running task
    /// </summary>
    private void FillListBoxRandom()
    {
        lblNames.Text = "";

        List<String> names = new List<string>();

        int count = NAMES.Length;

        for (int i = 1; i < 30; i++)
        {
            System.Threading.Thread.Sleep(100);
            Random rnd = new Random();
            int number = rnd.Next(count);
            string selName = NAMES[number];
            if (!names.Contains(selName))
            {
                names.Add(selName);
            }
        }

        foreach (string name in names)
            lblNames.Text += name + "<BR />";

    }
}