package com.raycin.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by lingbing on 2015/12/30.
 */

@Controller
@EnableAutoConfiguration
public class SimpleController {

    @RequestMapping(value ="/hello", method = RequestMethod.GET)
    public String hello() {
        return "test.jsp";
    }

    @RequestMapping(value ="/", method = RequestMethod.GET)
    public String index() {
        return "index.jsp";
    }

    public static void main(String[] args) {

        SpringApplication.run(SimpleController.class, args);

    }
}
