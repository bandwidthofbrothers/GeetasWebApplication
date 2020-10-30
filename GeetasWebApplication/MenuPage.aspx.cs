using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeetasWebApplication
{
    public partial class MenuPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        private void FillPage()
        {
            //Get a list of all menu items in DB
            Models.MenuItemModel menuItemModel = new Models.MenuItemModel();
            List<MenuItem> menuItems = menuItemModel.GetAllMenuItems();

            //Make sure menu items exist in DB
            if (menuItems != null)
            {
                //Create new panel with labels for each item
                foreach (MenuItem menuItem in menuItems)
                {
                    Panel MenuItemPanel = new Panel();
                    Label lblName = new Label();
                    Label lblPrice = new Label();

                    //set child control preoperties (no images for now)
                    lblName.Text = menuItem.MenuItemName;
                    lblName.CssClass = "itemName";

                    lblPrice.Text = "R " + menuItem.MenuItemPrice;
                    lblPrice.CssClass = "itemPrice";

                    //Add child controls to panels
                    MenuItemPanel.Controls.Add(lblName);
                    MenuItemPanel.Controls.Add(new Literal { Text = "<br />" });
                    MenuItemPanel.Controls.Add(lblPrice);

                    //Add dynamic panels to static parent panel
                    PnllMenuItems.Controls.Add(MenuItemPanel);

                }
            }
            else
            {
                //no product found
                PnllMenuItems.Controls.Add(new Literal { Text = "No products found!" });
            }
        }
    } 
}