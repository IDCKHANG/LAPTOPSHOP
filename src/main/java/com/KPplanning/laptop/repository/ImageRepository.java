package com.KPplanning.laptop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.KPplanning.laptop.entites.ImageEntity;
import com.KPplanning.laptop.entites.ProductEntity;

@Repository
public interface ImageRepository extends CrudRepository<ImageEntity, Integer>{
	List<ImageEntity> findByProduct(ProductEntity productEntity);
}
