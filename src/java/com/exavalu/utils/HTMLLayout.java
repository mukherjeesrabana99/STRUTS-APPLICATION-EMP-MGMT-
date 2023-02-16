/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author user
 */
package com.exavalu.utils;
import java.io.IOException;
import java.sql.SQLException;
import org.apache.log4j.Logger;  
public class HTMLLayout {
    static Logger log = Logger.getLogger(HTMLLayout.class.getName());  
    public static void main(String[] args)throws IOException,SQLException  
    {  
   
        log.debug("Sample debug message");  
        log.info("Sample info message");
        log.error("Sample info message");
        
    }  
}
