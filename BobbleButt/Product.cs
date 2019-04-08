using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BobbleButt
{
    public class Product
    {
        public Product()
        {
        }

        public Product(string name, string description, string image, string quantity, double price)
        {
            Name = name;
            Description = description;
            Image = image;
            Quantity = quantity;
            Price = price;
        }

        public string Name { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public string Quantity { get; set; }
        public double Price { get; set; }
    }
}