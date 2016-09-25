package com.arvin.controller;

import com.arvin.model.DepartmentsystemEntity;
import com.arvin.model.WebserviceportEntity;
import com.arvin.repository.DepartmentsystemRepository;
import com.arvin.repository.WebserviceportRepository;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.List;

import static javafx.scene.input.KeyCode.R;

/**
 * Created by shuxi on 2016-9-10.
 */
@Controller
public class WebservicePortController {

    @Autowired
    WebserviceportRepository webserviceportRepository;

    @Autowired
    DepartmentsystemRepository departmentsystemRepository;

    @RequestMapping(value = "/admin/wsport", method = RequestMethod.GET)
    public String getWsport(ModelMap modelMap) {

        List<WebserviceportEntity> webserviceportEntities = webserviceportRepository.findAll();

        modelMap.addAttribute("wsportList", webserviceportEntities);

        return "/admin/webserviceport";
    }

    @RequestMapping(value = "/admin/wsport/returnW", method = RequestMethod.GET)
    public String returnWsport(ModelMap modelMap) {

        return "redirect:/admin/wsport";
    }

    @RequestMapping(value = "/admin/wsport/add", method = RequestMethod.GET)
    public String addWsport(ModelMap modelMap) {

        List<DepartmentsystemEntity> departmentsystemEntityList = departmentsystemRepository.findAll();

        modelMap.addAttribute("deptsysList", departmentsystemEntityList);

        return "admin/webserviceportAdd";
    }

    @RequestMapping(value = "/admin/wsport/addW", method = RequestMethod.POST)
    public String addWsportPost(@ModelAttribute("wsport") WebserviceportEntity webserviceport) {

        webserviceport.setPubDate(new Timestamp(System.currentTimeMillis()));

        webserviceportRepository.saveAndFlush(webserviceport);

        return "redirect:/admin/wsport";
    }

    @RequestMapping(value = "/admin/wsport/show/{id}", method = RequestMethod.GET)
    public String showWsport(@PathVariable("id") int wsportId, ModelMap modelMap) {

        WebserviceportEntity webserviceportEntity = webserviceportRepository.findOne(wsportId);

        modelMap.addAttribute("wsport", webserviceportEntity);

        return "admin/webserviceportDetail";
    }

    @ExceptionHandler({SpringException.class})
    @RequestMapping(value = "/admin/wsport/update/{id}", method = RequestMethod.GET)
    public String updateWsport(@PathVariable("id") int wsportId, ModelMap modelMap) {

        WebserviceportEntity webserviceport = webserviceportRepository.findOne(wsportId);

        List<DepartmentsystemEntity> deptsystem = departmentsystemRepository.findAll();

        modelMap.addAttribute("wsport", webserviceport);

        modelMap.addAttribute("deptsystems", deptsystem);

        return "admin/webserviceportUpdate";
    }

    @RequestMapping(value = "/admin/wsport/updateW", method = RequestMethod.POST)
    public String updateWsportPost(@ModelAttribute("wsportU") WebserviceportEntity webserviceport) throws SpringException {

        webserviceport.setPubDate(new Timestamp(System.currentTimeMillis()));
        webserviceportRepository.updateWsport(webserviceport.getWsPort(),
                webserviceport.getWsDesc(),
                webserviceport.getWsName(),
                webserviceport.getPubDate(),
                webserviceport.isAvailable(),
                webserviceport.getWsNote(),
                webserviceport.getDeptsysByDeptsysId().getId(),
                webserviceport.getId());


        webserviceportRepository.flush();

        return "redirect:/admin/wsport";
    }

    @RequestMapping(value = "/admin/wsport/delete/{id}", method = RequestMethod.GET)
    public String deleteWsport(@PathVariable("id") int wsportId) {

        webserviceportRepository.delete(wsportId);

        webserviceportRepository.flush();

        return "redirect:/admin/wsport";
    }
}
