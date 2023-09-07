using Microsoft.AspNetCore.Mvc;

namespace MobileShop.Web.Areas.Admin.Controllers
{
    public class HomeAdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
