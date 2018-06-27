/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Tam Huynh
 */
@Controller
public class HomeController {
    
    @RequestMapping("index")
    public String returnIndex(ModelMap map) {
        map.addAttribute("function", "main");
        return "index";
    }
    
    
    
    
    @RequestMapping("editstaff")
    public String returneditStaff(ModelMap map) {
        map.addAttribute("function", "editstaffs");
        return "editstaffs";
    }
    
    
    @RequestMapping("addstaffs")
    public String returnaddStaff(ModelMap map) {
        map.addAttribute("function", "addstaffs");
        return "addstaffs";
    }
    
    
    
}
