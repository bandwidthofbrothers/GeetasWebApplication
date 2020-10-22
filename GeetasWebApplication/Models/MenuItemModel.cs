using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GeetasWebApplication.Models
{
    public class MenuItemModel
    {
        public string InsertMenuItem(MenuItem menuItem)
        {
            try
            {
                group22Entities db = new group22Entities();
                db.MenuItems.Add(menuItem);
                db.SaveChanges();

                return menuItem.MenuItemName + "was successfully inserted";
            }    
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateMenuItem(int id, MenuItem menuItem)
        {
            try
            {
                group22Entities db = new group22Entities();

                //Fetch object from db
                MenuItem mi = db.MenuItems.Find(id);

                mi.MenuItemName = menuItem.MenuItemName;
                mi.MenuItemPrice = menuItem.MenuItemPrice;
                mi.MenuItemID = menuItem.MenuItemID;

                db.SaveChanges();
                return menuItem.MenuItemName + "was successfully updated";


            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteMenuItem(int id)
        {
            try
            {
                group22Entities db = new group22Entities();
                MenuItem menit = db.MenuItems.Find(id);

                db.MenuItems.Attach(menit);
                db.MenuItems.Remove(menit);
                db.SaveChanges();

                return menit.MenuItemName + "was successfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}