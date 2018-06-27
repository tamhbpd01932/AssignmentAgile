/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abc.controller;

import abc.entity.Departs;
import abc.model.DepartsModel;
import static jdk.nashorn.internal.runtime.Debug.id;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Tam
 */
@Controller
public class DepartController {

    @RequestMapping("departs")
    public String returnDepart(ModelMap map) {
        DepartsModel dpm = new DepartsModel();
        map.addAttribute("listDeparts", dpm.getAllDeparts());
        map.addAttribute("function", "departs");
        return "index";
    }

    @RequestMapping("editdeparts")
    public String returneditDepart(ModelMap map, @RequestParam(value = "id") int id) {
        DepartsModel dpm = new DepartsModel();
        Departs d = dpm.getDeparts(id);
        map.addAttribute("depart", d);
        map.addAttribute("function", "editdeparts");
        return "index";
    }

    @RequestMapping("redirectCreatedepart")
    public String redirectCreatedepart(ModelMap map) {
        map.addAttribute("function", "createdepart");
        return "index";
    }

    @RequestMapping("createdepart")
    public String returnaddDepart(ModelMap map, @ModelAttribute(value = "depart") Departs d) {
        DepartsModel dpm = new DepartsModel();
        dpm.createDeparts(d);
        map.addAttribute("listDeparts", dpm.getAllDeparts());
        map.addAttribute("function", "departs");
        return "index";
    }

    @RequestMapping(value = "updatedeparts", method = RequestMethod.POST)
    public String update(ModelMap map, @ModelAttribute(value = "PB") Departs d) {
        DepartsModel model = new DepartsModel();
        model.editDeparts(d);
        return "redirect:departs.htm";
    }

    @RequestMapping(value = "removedeparts")
    public String returnremoveDepart1(ModelMap map, @ModelAttribute(value = "id") int id) {
        DepartsModel model = new DepartsModel();
        Departs d = model.getDeparts(id);
        model.removeDeparts(d);
        map.addAttribute("listDeparts", model.getAllDeparts());
        map.addAttribute("function", "departs");
        return "index";
    }
}
