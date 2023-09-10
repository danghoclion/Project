using Microsoft.AspNetCore.Mvc;
using MobileShop.Web.Models;
using Newtonsoft.Json;

namespace MobileShop.Web.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class HomeAdminController : Controller
    {
        public IActionResult Index()
        {
            List<DataPoint> dataPoints1 = new List<DataPoint>{
                new DataPoint("1/2023", 22),
                new DataPoint("3/2023", 36),
                new DataPoint("5/2023", 42),
                new DataPoint("7/2023", 51),
                new DataPoint("9/2023", 46),
            };
            List<DataPoint> dataPoints2 = new List<DataPoint>{
                new DataPoint("12/2023", 22),
                new DataPoint("12/2023", 36),
                new DataPoint("12/2023", 42),
                new DataPoint("12/2023", 51),
                new DataPoint("12/2023", 46),
            };
            List<DataPoint> dataPoints3 = new List<DataPoint>{
                new DataPoint("12/2023", 22),
                new DataPoint("12/2023", 36),
                new DataPoint("12/2023", 42),
                new DataPoint("12/2023", 51),
                new DataPoint("12/2023", 46),
            };
            List<DataPoint> dataPoints4 = new List<DataPoint>{
                new DataPoint("12/2023", 22),
                new DataPoint("12/2023", 36),
                new DataPoint("12/2023", 42),
                new DataPoint("12/2023", 51),
                new DataPoint("12/2023", 46),
            };

            ViewBag.DataPoints1 = JsonConvert.SerializeObject(dataPoints1);
            ViewBag.DataPoints2 = JsonConvert.SerializeObject(dataPoints2);
            ViewBag.DataPoints3 = JsonConvert.SerializeObject(dataPoints3);
            ViewBag.DataPoints4 = JsonConvert.SerializeObject(dataPoints4);

            return View();
        }
    }
}
