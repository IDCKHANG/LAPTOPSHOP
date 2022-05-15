package com.KPplanning.laptop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.KPplanning.laptop.entites.ReviewAndVoteEntity;

@Repository
public interface ReviewAndVoteRepository extends JpaRepository<ReviewAndVoteEntity, Integer>{
	 @Query("Select c from ReviewAndVoteEntity c "
	            + "where c.product.id Like ?1 ")
	    List<ReviewAndVoteEntity> findByCommentByProductId(int id);
}
