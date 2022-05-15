package com.KPplanning.laptop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.KPplanning.laptop.entites.ProductEntity;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Integer>{
	  List<ProductEntity> findByProductNameContainingOrderByProductNameAsc(String name);
      
	    @Query("Select p from ProductEntity p "
	            + "where p.category.name =  ?1 ")
	    List<ProductEntity> findProductByCategory(String name);
	    
	    @Query(value = "Select * From Product"
	            + " Where id limit ?1, ?2", nativeQuery = true)
	    List<ProductEntity> listProductLimit(int n, int m);
}
