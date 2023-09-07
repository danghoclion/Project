using Microsoft.EntityFrameworkCore;
using MobileShop.Core.Data;
using MobileShop.Core.Models;
using MobileShop.Core.Repositories.IRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MobileShop.Core.Repositories.Repository
{
    public class ProductRepository : GenericRepository<Product>, IProductRepository
    {
        public ProductRepository()
        { }

        public ProductRepository(MobileShopDBContext context) : base(context)
        {
        }

        public async Task<List<Product>> GetByCategoryId(int id)
        {
            var products = await entities.Where(x=> x.CategoryId== id).ToListAsync();
            return products;
        }
    }
}
