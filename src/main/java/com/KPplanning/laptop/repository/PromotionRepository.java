package com.KPplanning.laptop.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.KPplanning.laptop.entites.PromotionEntity;

@Repository
public interface PromotionRepository extends CrudRepository<PromotionEntity, Integer>{
	@Query("Select pr from PromotionEntity pr JOIN FETCH pr.products p WHERE pr.startDate <= ?1 and pr.endDate >= ?1 and p.id= ?2")
	public List<PromotionEntity> findPromotionByProductIdAndCurrentDate(Date currentDate,int product);
}
