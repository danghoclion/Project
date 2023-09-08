﻿using Microsoft.AspNetCore.Identity;
using MobileShop.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MobileShop.Core.Repositories.IRepository
{
    public interface IUserRepository : IGenericRepository<IdentityUser>
    {
        IdentityUser GetById(string id);
    }
}
