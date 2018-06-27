/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abc.controller;

import abc.entity.Departs;
import abc.entity.Staffs;
import abc.model.DepartsModel;
import abc.model.StaffsModel;
import java.io.File;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Tam
 */
@Controller
public class StaffController {

    @RequestMapping("staffs")
    public String returnStaff(ModelMap map) {

        map.addAttribute("function", "staffs");
        StaffsModel stm = new StaffsModel();
        map.addAttribute("listStaffs", stm.getAllStaffs());
        return "index";
    }

    @RequestMapping("editstaffs")
    public String returneditStaff(ModelMap map, @RequestParam(value = "username") String username) {
        StaffsModel sm = new StaffsModel();
        Staffs s = sm.getStaffs(username);
        DepartsModel dm = new DepartsModel();
        map.addAttribute("departList", dm.getAllDeparts());
        map.addAttribute("st", s);
        map.addAttribute("function", "createstaff");
        map.addAttribute("action", "updatestaff.htm");
        return "index";
    }

    @RequestMapping("redirectCreatestaff")
    public String redirectCreatestaff(ModelMap map) {
        DepartsModel dm = new DepartsModel();
        map.addAttribute("departList", dm.getAllDeparts());
        map.addAttribute("function", "createstaff");
        map.addAttribute("action", "addstaff.htm");
        map.addAttribute("st", new Staffs());
        return "index";
    }

    @RequestMapping(value = "addstaff", method = RequestMethod.POST)
    public String addStaffs(@ModelAttribute("st") Staffs staffs) {

        try {
            staffs.setPhoto(null);
            StaffsModel stm = new StaffsModel();
            stm.createStaffs(staffs);
            return "redirect:staffs.htm";
        } catch (Exception e) {
            return "redirect:staffs.htm";
        }
    }

    @RequestMapping(value = "updatestaff", method = RequestMethod.POST)
    public String updateStaffs(@ModelAttribute("st") Staffs staffs) {
        try {
            staffs.setPhoto(null);
            StaffsModel stm = new StaffsModel();
            stm.editStaffs(staffs);
            return "redirect:staffs.htm";
        } catch (Exception e) {
            return "redirect:staffs.htm";
        }
    }

    @RequestMapping(value = "removestaff")
    public String returnremoveDepart1(ModelMap map, @ModelAttribute(value = "username") String username) {
        StaffsModel sm = new StaffsModel();
        Staffs s = sm.getStaffs(username);
        sm.removeStaffs(s);
        map.addAttribute("listStaffs", sm.getAllStaffs());
        map.addAttribute("function", "staffs");
        return "index";
    }

}
