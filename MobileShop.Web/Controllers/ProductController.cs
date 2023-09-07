using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using MobileShop.Core.Models;
using MobileShop.Core.Repositories.IRepository;

namespace MobileShop.Web.Controllers
{
    public class ProductController : Controller
    {
        private readonly IUnitOfWork unitOfWork;
        private readonly UserManager<IdentityUser> userManager;

        public ProductController(IUnitOfWork unitOfWork, UserManager<IdentityUser> userManager)
        {
            this.unitOfWork = unitOfWork;
            this.userManager = userManager;
        }
        public async Task<IActionResult> Index()
        {
            var product = await unitOfWork.ProductRepository.GetAllAsync();
            return View(product);
        }
        public async Task<IActionResult> ProductDetail(int id)
        {
            var product = await unitOfWork.ProductRepository.GetByIdAsync(id);
            return View(product);
        }

        public async Task<IActionResult> ProductByCategory(int id)
        {
            var product = await unitOfWork.ProductRepository.GetByCategoryId(id);
            return View(product);
        }


        [HttpGet]
        public async Task<IActionResult> AddProductToCart(int id)
        {

            var shopUser = await userManager.GetUserAsync(User);
            var product =await unitOfWork.ProductRepository.GetByIdAsync(id);
            var userCart = unitOfWork.UserCartRepository.GetByWhereAsync(x => x.UserId == shopUser.Id).ToList();
            foreach (var userCartItem in userCart)
            {
                if(userCartItem.ProductName== product.ProductName)
                {
                    userCartItem.Quantity++;
                    unitOfWork.SaveChange();
                    TempData["SuccessMessage"] = "Sản phẩm đã được thêm vào giỏ hàng";
                    return RedirectToAction("Index");
                }
            }
            UserCart newUserCart = new UserCart()
            {
                UserId = shopUser.Id,
                ProductName= product.ProductName,
                Price= product.Price,
                Image = product.Image,
                ProductId = id,
                Quantity= 1,
            };
            await unitOfWork.UserCartRepository.CreateAsync(newUserCart);
            TempData["SuccessMessage"] = "Sản phẩm đã được thêm vào giỏ hàng";
            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<IActionResult> GetUserCart()
        {
            var shopUser = await userManager.GetUserAsync(User);
            var userCart = unitOfWork.UserCartRepository.GetByWhereAsync(x => x.UserId == shopUser.Id).ToList();
            return View(userCart);
        }
    }
}
