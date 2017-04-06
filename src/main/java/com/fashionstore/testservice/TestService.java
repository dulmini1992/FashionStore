/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fashionstore.testservice;

import javax.ejb.Stateless;

/**
 *
 * @author Dulmini Senanayaka
 */
@Stateless
public class TestService {

   public void displayMessage(){
       System.out.println("Hello....World....!");
   }
}
