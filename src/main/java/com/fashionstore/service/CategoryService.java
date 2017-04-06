/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fashionstore.service;

import com.fashionstore.model.Category;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Dulmini Senanayaka
 */
@Stateless
public class CategoryService {

    @PersistenceContext(unitName = "FashionStorePU")
    EntityManager em;

//    public Movie addNewmovie (Movie movie){
//        em.persist (movie);
//        return movie;
    public List<Category> getAllCategory() {
//            list ekak return wiya yuthui.namuth eya category type wiya yuthui
        Query query = em.createQuery("select c from Category c");
        List<Category> categoryList = query.getResultList();
        return categoryList;

    }

}
