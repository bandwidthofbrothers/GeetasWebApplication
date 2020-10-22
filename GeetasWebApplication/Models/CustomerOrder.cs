using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GeetasWebApplication.Modelsco
{
    public class CustomerOrderModel
    {
        public string InsertCustomerOrder(CustomerOrder customerOrder)
        {
            try
            {
                group22Entities db = new group22Entities();
                db.CustomerOrders.Add(customerOrder);
                db.SaveChanges();

                return customerOrder.OrderDate + "was successfully inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateCustomerOrder(int id, CustomerOrder customerOrder)
        {
            try
            {
                group22Entities db = new group22Entities();

                //Fetch object from db
                CustomerOrder mi = db.CustomerOrders.Find(id);

                mi.OrderDate = customerOrder.OrderDate;
                mi.Quantity = customerOrder.Quantity;
                mi.MenuItemID = customerOrder.MenuItemID;
                mi.CustomerOrderID = customerOrder.CustomerOrderID;
                mi.SaleID = customerOrder.SaleID;
                mi.OrderTime = customerOrder.OrderTime;
                mi.EmployeeNumber = customerOrder.EmployeeNumber;



                db.SaveChanges();
                return customerOrder.OrderDate + "was successfully updated";


            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteCustomerOrder(int id)
        {
            try
            {
                group22Entities db = new group22Entities();
                CustomerOrder menit = db.CustomerOrders.Find(id);

                db.CustomerOrders.Attach(menit);
                db.CustomerOrders.Remove(menit);
                db.SaveChanges();

                return menit.OrderDate + "was successfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}