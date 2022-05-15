package com.KPplanning.laptop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.KPplanning.laptop.entites.ProductEntity;
import com.KPplanning.laptop.entites.PromotionEntity;
import com.KPplanning.laptop.repository.ImageRepository;
import com.KPplanning.laptop.repository.ProductRepository;

@Service
public class ProductService {
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ImageRepository imageRepository;
	
	@Autowired
	PromotionService promotionService;
	
	public List<ProductEntity> getProduct(){
		List<ProductEntity> products = (List<ProductEntity>)productRepository.findAll();
		if (products.size() > 0 && products != null) {
			for (ProductEntity product : products) {
				product.setImages(imageRepository.findByProduct(product));
			}
		}
		return products;
	}
	
	public double newPrice(ProductEntity pro){
        double newprice=pro.getPrice();
        PromotionEntity promo=promotionService.findPromotionByProductIdAndCurrentDate(pro.getId());
        if(pro.getId() > 0){
            newprice= newprice - promo.getDescount();
        }
        return newprice;    
    }
	
	 public ProductEntity findProductById(int id) {
	        ProductEntity product = productRepository.getById(id);
	        if (product != null && product.getId() > 0) {
	            product.setImages(imageRepository.findByProduct(product));
	        }
	        return product;
	    }

	    public List<ProductEntity> search(String name) {
	        List<ProductEntity> products = (List<ProductEntity>) productRepository.findByProductNameContainingOrderByProductNameAsc(name);
	        if (products != null && products.size() > 0) {
	            for (ProductEntity product : products) {
	                product.setImages(imageRepository.findByProduct(product));
	            }
	        }
	        return products;
	    }

	    public List<ProductEntity> findProductByCategory(String name) {
	        List<ProductEntity> products = (List<ProductEntity>) productRepository.findProductByCategory(name);
	        if (products != null && products.size() > 0) {
	            for (ProductEntity product : products) {
	                product.setImages(imageRepository.findByProduct(product));
	            }
	        }
	        return products;

	    }

	    public List<ProductEntity> listProductLimit(int t, int s) {
	        List<ProductEntity> products
	                = productRepository.listProductLimit(t, s);
	        if (products != null && products.size() > 0) {
	            for (ProductEntity product : products) {
	                product.setImages(imageRepository.findByProduct(product));
	            }
	        }
	        return products;
	    }

	    public ProductEntity save(ProductEntity product) {
	        return productRepository.save(product);
	    }

	    public boolean delete(int productId) {
	        productRepository.deleteById(productId);
	        return productRepository.existsById(productId);
	    }
}
