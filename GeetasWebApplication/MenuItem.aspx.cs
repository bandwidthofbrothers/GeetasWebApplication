using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeetasWebApplication
{
    public partial class MenuItem1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        private void FillPage()
        {
            //Get selected products data
            if(!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                Models.MenuItemModel menuItemModel = new Models.MenuItemModel();
                MenuItem menuItem = menuItemModel.GetMenuItem(id);

                //Fill page with data
                lblprice.Text = "R " + menuItem.MenuItemPrice;
                lblTitle.Text = menuItem.MenuItemName;
                //lblDescription - - - - 
                lblItemNumber.Text = id.ToString();
                //image of menu item here

                //Fill Amount Drop Down List with numbers to 1-10
                int[] amount = Enumerable.Range(1, 10).ToArray();
                ddlAmount.DataSource = amount;
                ddlAmount.AppendDataBoundItems = true;
                ddlAmount.DataBind();

            }
        }
    }
}