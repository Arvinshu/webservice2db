package com.arvin.controller;

import com.arvin.model.DepartmentsystemEntity;
import com.arvin.repository.DepartmentsystemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.springframework.data.jpa.domain.AbstractPersistable_.id;

/**
 * Created by shuxi on 2016-9-10.
 */
@Controller
public class DepartmentSystemController {
    @Autowired
    DepartmentsystemRepository departmentsystemRepository;

    @RequestMapping(value = "/admin/deptsys", method = RequestMethod.GET)
    public String getDeptSystem(ModelMap modelMap) {
        List<DepartmentsystemEntity> departmentsystemEntities = departmentsystemRepository.findAll();
        modelMap.addAttribute("deptsysList", departmentsystemEntities);
        return "/admin/departmentsystem";
    }

    @RequestMapping(value = "/admin/deptsys/returnS", method = RequestMethod.GET)
    public String returnDeptSystem() {
        return "redirect:/admin/deptsys";
    }

    @RequestMapping(value = "/admin/deptsys/add", method = RequestMethod.GET)
    public String addDeptSystem() {
        return "/admin/departmentsystemAdd";
    }

    @RequestMapping(value = "/admin/deptsys/addS", method = RequestMethod.POST)
    //@ExceptionHandler({SpringException.class})
    public String addDeptsysPost(@ModelAttribute("deptsys") DepartmentsystemEntity departmentsystemEntity, ModelMap modelMap) {
        System.out.println(departmentsystemEntity.getDeptName());
        System.out.println(departmentsystemEntity.getSystemName());

        departmentsystemRepository.saveAndFlush(departmentsystemEntity);

        // 重定向到用户管理页面，方法为 redirect:url
        return "redirect:/admin/deptsys";
    }

    @RequestMapping(value = "/admin/deptsys/show/{id}", method = RequestMethod.GET)
    public String showDeptsys(@PathVariable("id") Integer deptsysId, ModelMap modelMap) {
        DepartmentsystemEntity departmentsystemEntity = departmentsystemRepository.findOne(deptsysId);

        modelMap.addAttribute("deptsys", departmentsystemEntity);
        return "admin/departmentsystemDetail";
    }

    @RequestMapping(value = "/admin/deptsys/update/{id}", method = RequestMethod.GET)
    public String updateDeptsys(@PathVariable("id") Integer deptsysId, ModelMap modelMap) {
        DepartmentsystemEntity departmentsystemEntity = departmentsystemRepository.findOne(deptsysId);

        modelMap.addAttribute("deptsys", departmentsystemEntity);
        return "admin/departmentsystemUpdate";
    }

    @RequestMapping(value = "/admin/deptsys/updateS", method = RequestMethod.POST)
    public String updateDeptsysPost(@ModelAttribute("deptsysU") DepartmentsystemEntity departmentsystem) {
        departmentsystemRepository.updateDeptsys(departmentsystem.getDeptName(),
                departmentsystem.getSystemName(),
                departmentsystem.getCreateTime(),
                departmentsystem.getId());
        departmentsystemRepository.flush();
        return "redirect:/admin/deptsys";
    }
}
