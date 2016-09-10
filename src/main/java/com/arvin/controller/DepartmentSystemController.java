package com.arvin.controller;

import com.arvin.model.DepartmentsystemEntity;
import com.arvin.repository.DepartmentsystemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

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

    @RequestMapping(value = "/admin/deptsys/add", method = RequestMethod.GET)
    public String addDeptSystem() {
        return "/admin/departmentsystemAdd";
    }
}
