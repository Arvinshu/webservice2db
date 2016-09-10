package com.arvin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by shuxi on 2016-9-10.
 */

//@Controller注解可明确地定义该类为处理请求的Controller类
//如果请求首页，则返回index页面，页面文件格式在dispatcher中定义
@Controller
public class MainController {
    @RequestMapping(value = "/", method = RequestMethod.GET)

    public String index() {
        //log.info("Requesting /");
        return "main";
    }
}
