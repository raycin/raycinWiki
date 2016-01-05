package com.raycin.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by lingbing on 2015/12/30.
 */

@Controller
public class SimpleController {

    @RequestMapping(value ="/hello", method = RequestMethod.GET)
    public ModelAndView hello() {
        return new ModelAndView("jstest");
    }

    @RequestMapping(value ="/login", method = RequestMethod.GET)
    public ModelAndView login() {
        return new ModelAndView("index");
    }

    @RequestMapping(value ="/doLogin", method = RequestMethod.POST)
    public ModelAndView test() {
        return new ModelAndView("index").addObject("code" , "10001");
    }

    public static void main(String[] args) {
        SpringApplication.run(SimpleController.class, args);
    }
}
