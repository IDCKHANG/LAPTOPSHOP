package com.KPplanning.laptop.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.KPplanning.laptop.entites.ProductEntity;
import com.KPplanning.laptop.service.ProductService;


@RestController
@RequestMapping("api/product")
public class LaptopApiController {

	@Autowired
	private ProductService productService;

	@GetMapping("")
	@CrossOrigin(origins = "*")
	public List<ProductEntity> getList() {
		System.out.println("API GETLIST");
		System.out.println("API GETLIST"+productService.getProduct().size());

		return productService.getProduct();
	}
	
//	@GetMapping("acc")
//	@CrossOrigin(origins = "*")
//	public List<Account> getAccounts() {
//		System.out.println("API getAccounts");
//		return accountService.findAll();
//	}

//	@PostMapping()
//	public AccountRole add(@RequestBody AccountRole hocVien) {
//		return accountRoleService.save(hocVien);
//	}

//	@PostMapping("add")
//	public AccountRole addAccount(@RequestBody AccountRole accountRole) {
//		System.out.println("POSTAPI");
////			AccountRoleKey acountRoleKey = new AccountRoleKey();
////			acountRoleKey.setAccountId(accountRole.getAccount().getAccountId());
////			accountRole.setId(acountRoleKey);
//		return accountRoleService.save(accountRole);
//
//	}
}

