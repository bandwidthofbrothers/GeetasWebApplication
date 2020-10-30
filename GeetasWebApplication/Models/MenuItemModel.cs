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

        public MenuItem GetMenuItem(int id)
        {
            try
            {
                using (group22Entities db = new group22Entities())
                {
                    MenuItem menuItem = db.MenuItems.Find(id);
                    return menuItem;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<MenuItem>GetAllMenuItems()
        {
            try
            {
                using (group22Entities db = new group22Entities())
                {
                    List<MenuItem> menuItems = (from x in db.MenuItems
                                                select x).ToList();

                    return menuItems;
                }
            }
            catch (Exception)
            {

                return null; 
            }
        }
    }
}