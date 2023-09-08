using Microsoft.AspNetCore.Mvc;
using MobileShop.Core.Repositories.IRepository;
using MobileShop.Core.StatisticModels;
using MobileShop.Web.Helper;
using MobileShop.Web.Models;
using Newtonsoft.Json;
using NuGet.Packaging;

namespace MobileShop.Web.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("HomeAdmin")]
    public class HomeAdminController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;

        public HomeAdminController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        [Route("Index")]
        public IActionResult Index()
        {
            //Xử lý số liệu cho line chart
            List<TotalAmountPerMonth> dataList = new List<TotalAmountPerMonth>();
            //Làm thật thì xoá dòng data mẫu này
            dataList.AddRange(new List<TotalAmountPerMonth>()
            {
                new TotalAmountPerMonth() {Amount=140000000,Date=new DateTime(2023,1,12)},
                new TotalAmountPerMonth() {Amount=14000000,Date=new DateTime(2023,2,12)},
                new TotalAmountPerMonth() {Amount=114000000,Date=new DateTime(2023,3,12)},
                new TotalAmountPerMonth() {Amount=214000000,Date=new DateTime(2023,4,12)},
                new TotalAmountPerMonth() {Amount=314000000,Date=new DateTime(2023,5,12)},
                new TotalAmountPerMonth() {Amount=114000000,Date=new DateTime(2023,6,12)},
                new TotalAmountPerMonth() {Amount=614000000,Date=new DateTime(2023,7,12)},
                new TotalAmountPerMonth() {Amount=114000000,Date=new DateTime(2023,8,12)},
                new TotalAmountPerMonth() {Amount=143000000,Date=new DateTime(2023,9,12)},
                new TotalAmountPerMonth() {Amount=144000000,Date=new DateTime(2023,10,12)},
                new TotalAmountPerMonth() {Amount=194000000,Date=new DateTime(2023,11,12)},
                new TotalAmountPerMonth() {Amount=114000000,Date=new DateTime(2023,12,12)},
            });

            var lineDataPoints = dataList.LineChart(y => y.Amount, y => y.Date);
            ViewBag.lineDataPoints = lineDataPoints;

            //==================================================

            //Xử lý số liệu cho column chart
            List<TotalProductPerMonth> productDataList = new List<TotalProductPerMonth>();
            //Làm thật thì xoá dòng data mẫu này
            productDataList.AddRange(new List<TotalProductPerMonth>()
            {
                new TotalProductPerMonth(){Amount=14,DateTime=new DateTime(2023,1,12)},
                new TotalProductPerMonth(){Amount=4,DateTime=new DateTime(2023,2,12)},
                new TotalProductPerMonth(){Amount=1,DateTime=new DateTime(2023,3,12)},
                new TotalProductPerMonth(){Amount=18,DateTime=new DateTime(2023,4,12)},
                new TotalProductPerMonth(){Amount=4,DateTime=new DateTime(2023,5,12)},
                new TotalProductPerMonth(){Amount=24,DateTime=new DateTime(2023,6,12)},
                new TotalProductPerMonth(){Amount=4,DateTime=new DateTime(2023,7,12)},
                new TotalProductPerMonth(){Amount=6,DateTime=new DateTime(2023,8,12)},
                new TotalProductPerMonth(){Amount=11,DateTime=new DateTime(2023,9,12)},
                new TotalProductPerMonth(){Amount=14,DateTime=new DateTime(2023,10,12)},
                new TotalProductPerMonth(){Amount=17,DateTime=new DateTime(2023,11,12)},
                new TotalProductPerMonth(){Amount=11,DateTime=new DateTime(2023,12,12)}
            });

            var columnDataPoints = productDataList.ColumnChart(y => y.Amount, label => label.DateTime.Value.ToString("MM/yyyy"));
            ViewBag.columnDataPoints = columnDataPoints;

            //==================================================

            //Xử lý số liệu cho column chart
            List<TotalAmountPerBrand> brandDataList = new List<TotalAmountPerBrand>();
            //Làm thật thì xoá dòng data mẫu này
            brandDataList.AddRange(new List<TotalAmountPerBrand>()
            {
                new TotalAmountPerBrand(){Amount=100000000,BrandName="Apple"},
                new TotalAmountPerBrand(){Amount=100000000,BrandName="Nokia"},
                new TotalAmountPerBrand(){Amount=100000000,BrandName="Samsung"},
                new TotalAmountPerBrand(){Amount=100000000,BrandName="Oppo"},
                new TotalAmountPerBrand(){Amount=100000000,BrandName="Huawei"},
                new TotalAmountPerBrand(){Amount=100000000,BrandName="Xiaomi"},
            });

            var pieDataPoints = brandDataList.ColumnChart(y => y.Amount, label => label.BrandName);
            ViewBag.pieDataPoints = pieDataPoints;
            return View();
        }
    }
}