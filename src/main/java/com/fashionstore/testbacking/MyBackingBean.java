/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fashionstore.testbacking;

import com.fashionstore.testservice.TestService;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.faces.view.ViewScoped;

/**
 *
 * @author Dulmini Senanayaka
 */
@Named(value = "myBackingBean")
@ViewScoped
public class MyBackingBean {

    @EJB
    TestService testService;

    public void callingToDisplayMessage() {
        System.out.println("AAAAAAAAAAAAAAAAAAAA");
        testService.displayMessage();
    }

}
