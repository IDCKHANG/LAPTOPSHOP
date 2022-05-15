package com.KPplanning.laptop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.KPplanning.laptop.entites.ProductEntity;
import com.KPplanning.laptop.entites.PromotionEntity;
import com.KPplanning.laptop.entites.ReviewAndVoteEntity;
import com.KPplanning.laptop.service.ProductService;
import com.KPplanning.laptop.service.PromotionService;
import com.KPplanning.laptop.service.ReviewAndVoteService;

@Controller
@RequestMapping("LAPTOPAPI")
public class HomeController {
	@Autowired
	ProductService productService;
	@Autowired
	PromotionService promotionService;
	@Autowired
	ReviewAndVoteService reviewAndVoteService;
	
	@RequestMapping(path = { "/home", "/" })
	public String home(Model model, 
		@RequestParam(value = "status", required = false) String status,
		@RequestParam(value = "message", required = false) String message){
		model.addAttribute("status", status);
		model.addAttribute("message", message);
		
		List<ProductEntity> products = productService.getProduct();
		List<ProductEntity> products1 = productService.getProduct();
        for (ProductEntity pro : products) {
            pro.setPrice(productService.newPrice(pro));
            List<PromotionEntity> promo = promotionService.findPromotionByProductId(pro.getId());
            pro.setPromotions(promo);
        }
		model.addAttribute("products", products);
		model.addAttribute("products", products1);
		System.out.println("sizeproductL"+products.size());
		return "index";
		
	}
	
   @RequestMapping(value = {"/product/{id}"})
    public String infProduct(Model model,
            @PathVariable("id") int id) {
        ProductEntity infproduct = productService.findProductById(id);
        List<PromotionEntity> promo = promotionService.findPromotionByProductId(infproduct.getId());
        infproduct.setPrice(productService.newPrice(infproduct));
        infproduct.setPromotions(promo);
        List<ReviewAndVoteEntity> cmts = reviewAndVoteService.getComments(id);

        if (infproduct != null && infproduct.getId() > 0) {
            model.addAttribute("infproduct", infproduct);
            model.addAttribute("cmts", cmts);

            return "inforPRD";
        } else {
            return "redirect:/index?status=fail&message=product isn't exist.";
        }
    }
	
	@RequestMapping(value = {"/order"}, method = RequestMethod.POST)
	public String viewOrder(Model model, HttpSession session,
		@ModelAttribute ("id") int id) {
		ProductEntity pro = productService.findProductById(id);
		
		return "cart";
	}
	
	
	
}
