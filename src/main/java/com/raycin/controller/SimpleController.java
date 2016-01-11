package com.raycin.controller;

import com.raycin.wiki.Parser;
import com.raycin.wiki.Wiki;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.security.auth.login.FailedLoginException;
import java.io.IOException;
import java.util.stream.Stream;

/**
 * Created by lingbing on 2015/12/30.
 */

@Controller
public class SimpleController {

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public ModelAndView hello() {
        return new ModelAndView("jstest");
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/doLogin", method = RequestMethod.POST)
    public ModelAndView doLogin(String username, String password, String project) {
        Wiki wiki = new Wiki("toyhouse.ie.tsinghua.edu.cn", "/wiki", "http://");
        wiki.setUsingCompressedRequests(false);
        if (!wikiLogin(username, password, wiki))
            return new ModelAndView("index").addObject("err", "用户名或密码错误");

        Parser parser = getWikiContent(project, wiki);
        if (parser == null)
            return new ModelAndView("index").addObject("err", "未知错误");
        else
            return new ModelAndView("jstest").addObject("data", parser.getContent().toJson());


    }

    private Parser getWikiContent(String project, Wiki wiki) {
        try {
            String text = wiki.getPageText(project);
            Parser parser = new Parser(project, text);
            return parser;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    private boolean wikiLogin(String username, String password, Wiki wiki) {
        try {
            wiki.login(username, password);
            return true;
        } catch (IOException | FailedLoginException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        SpringApplication.run(SimpleController.class, args);
    }
}
