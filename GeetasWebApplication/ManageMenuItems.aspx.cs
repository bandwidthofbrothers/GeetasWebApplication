using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeetasWebApplication
{
    public partial class ManageMenuItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private MenuItem CreateMenuItem()
        {            
            MenuItem menuItem = new MenuItem();

            menuItem.MenuItemName = txtName.Text;            
            menuItem.Category = txtCategory.Text;
            menuItem.MenuItemPrice = Convert.ToDecimal(txtPrice.Text);
            menuItem.CurrentMenuItem = Convert.ToByte(DDL1.SelectedValue);

            return menuItem;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Models.MenuItemModel menuItemModel = new Models.MenuItemModel();

            MenuItem menuItem = CreateMenuItem();

            lblResult.Text = menuItemModel.InsertMenuItem(menuItem);
             
        }
    }
    
}

