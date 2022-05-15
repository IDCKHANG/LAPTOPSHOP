package com.KPplanning.laptop.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.KPplanning.laptop.entites.ReviewAndVoteEntity;
import com.KPplanning.laptop.repository.ReviewAndVoteRepository;

@Service
public class ReviewAndVoteService {

    @Autowired
    private ReviewAndVoteRepository reviewAndVoteRepository;

    public ReviewAndVoteEntity addComment(ReviewAndVoteEntity cmt) {       
            cmt.setDateComment(new Date());
            reviewAndVoteRepository.save(cmt);        
        return cmt;
    }

    public List<ReviewAndVoteEntity> getComments(int id) {
        return (List<ReviewAndVoteEntity>) reviewAndVoteRepository.findByCommentByProductId(id);
    }
}
