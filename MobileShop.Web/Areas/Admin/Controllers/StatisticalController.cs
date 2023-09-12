using Microsoft.AspNetCore.Mvc;
using MobileShop.Core.Repositories.IRepository;
using MobileShop.Core.Repositories.Repository;
using Newtonsoft.Json;

namespace MobileShop.Web.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class StatisticalController : Controller
    {
        private readonly IUnitOfWork unitOfWork;

        public StatisticalController(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
        }
        public async Task<IActionResult> Sales(DateTime? start, DateTime? end)
        {
            if(start == null || end == null)
            {
                start = new DateTime(2022, 4, 1);
                end = DateTime.Now;
            }    
            var moneyData = await unitOfWork.OrderRepository.GetReportMoney(start, end);
            ViewBag.DataPoint1 = JsonConvert.SerializeObject(moneyData);
            return View();
        }
    }
}
