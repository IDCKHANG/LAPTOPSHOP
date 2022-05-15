package com.KPplanning.laptop.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.KPplanning.laptop.entites.PromotionEntity;
import com.KPplanning.laptop.repository.PromotionRepository;

@Service
public class PromotionService {
	@Autowired
	PromotionRepository promotionRepository;
	
	   public PromotionEntity findPromotionByProductIdAndCurrentDate(int productId) {
	        List<PromotionEntity> promo = promotionRepository.findPromotionByProductIdAndCurrentDate(new Date(), productId);
	        if (promo != null && promo.size() > 0) {
	            return promo.get(0);
	        } else {
	            return new PromotionEntity();
	        }
	    }

	    public List<PromotionEntity> findPromotionByProductId(int product) {
	        List<PromotionEntity> promo = (List<PromotionEntity>) promotionRepository.findPromotionByProductIdAndCurrentDate(new Date(), product);
	        return promo;

	    }
}
