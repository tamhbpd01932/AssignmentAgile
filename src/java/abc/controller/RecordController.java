/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package abc.controller;

import abc.entity.Departs;
import abc.entity.Records;
import abc.entity.Staffs;
import abc.model.DepartsModel;
import abc.model.RecordModel;
import abc.model.StaffsModel;
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
public class RecordController {

    @RequestMapping("records")
    public String returnRecord(ModelMap map) {
        RecordModel rcm = new RecordModel();
        map.addAttribute("listRecords", rcm.getAllRecord());
        map.addAttribute("function", "records");
        return "index";
    }

    @RequestMapping("editrecords")
    public String returneditrecord(ModelMap map, @RequestParam(value = "id") int id) {
        RecordModel rcm = new RecordModel();
        Records r = rcm.getRecord(id);
        StaffsModel sm = new StaffsModel();
        map.addAttribute("staffList", sm.getAllStaffs());
        map.addAttribute("rc", r);
        map.addAttribute("function", "createrecord");
        map.addAttribute("action", "updaterecord.htm");
        return "index";
    }

    @RequestMapping("redirectCreaterecord")
    public String redirectCreaterecord(ModelMap map) {
        StaffsModel sm = new StaffsModel();
        map.addAttribute("staffList", sm.getAllStaffs());
        map.addAttribute("function", "createrecord");
        map.addAttribute("action", "addrecord.htm");
        map.addAttribute("rc", new Records());
        return "index";
    }

    @RequestMapping(value = "addrecord", method = RequestMethod.POST)
    public String addStaffs(@ModelAttribute("rc") Records record) {

        try {
            RecordModel rcm = new RecordModel();
            rcm.createRecord(record);
            return "redirect:records.htm";
        } catch (Exception e) {
            return "redirect:records.htm";
        }
    }

    @RequestMapping(value = "updaterecord", method = RequestMethod.POST)
    public String updateStaffs(@ModelAttribute("rc") Records record) {
        try {
            RecordModel rcm = new RecordModel();
            rcm.editRecord(record);
            return "redirect:records.htm";
        } catch (Exception e) {
            return "redirect:records.htm";
        }
    }

    @RequestMapping(value = "removerecords")
    public String returnremoveRecords(ModelMap map, @ModelAttribute(value = "id") int id) {
        RecordModel rcm = new RecordModel();
        Records r = rcm.getRecord(id);
        rcm.removeRecord(r);
        map.addAttribute("listRecords", rcm.getAllRecord());
        map.addAttribute("function", "records");
        return "index";
    }
}
