using Microsoft.AspNetCore.Mvc;
using MobileShop.Core.Repositories.IRepository;

namespace MobileShop.Web.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class UsersController : Controller
    {
        private readonly IUnitOfWork unitOfWork;

        public UsersController(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
        }
        public async Task<IActionResult> Index()
        {
            var users = await unitOfWork.UserRepository.GetAllAsync();
            return View(users);
        }
    }
}
