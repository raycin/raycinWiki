package com.raycin.controller;

import com.raycin.wiki.Parser;
import com.raycin.wiki.Wiki;
import org.springframework.boot.SpringApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.security.auth.login.FailedLoginException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by lingbing on 2015/12/30.
 */

@Controller
public class SimpleController {

    private static Map<String, Parser> map = new HashMap<>();

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public ModelAndView hello() {
        return new ModelAndView("jsmind").addObject("data", "{\"id\":\"test\",\"topic\":\"test\",\"children\":[{\"id\":\"逻辑模型\",\"topic\":\"逻辑模型\",\"children\":[{\"id\":\"背景\",\"topic\":\"背景\",\"children\":[{\"id\":\"大数据、开源运动\",\"topic\":\"大数据、开源运动\",\"children\":[],\"level\":3},{\"id\":\"全球化的知识资源和人才库\",\"topic\":\"全球化的知识资源和人才库\",\"children\":[],\"level\":3},{\"id\":\"学校作为活的知识库\",\"topic\":\"学校作为活的知识库\",\"children\":[],\"level\":3},{\"id\":\"高效能的学校\",\"topic\":\"高效能的学校\",\"children\":[],\"level\":3}],\"level\":2},{\"id\":\"目标（用户需求）\",\"topic\":\"目标（用户需求）\",\"children\":[],\"level\":2},{\"id\":\"学习目标\",\"topic\":\"学习目标\",\"children\":[{\"id\":\"建立一个共享的知识本体，以Wiki的词汇数据库为载体。让参与者体验并理解词汇管理与命名空间管理的相关性与重要性。\",\"topic\":\"建立一个共享的知识本体，以Wiki的词汇数据库为载体。让参与者体验并理解词汇管理与命名空间管理的相关性与重要性。\",\"children\":[],\"level\":3},{\"id\":\"推动学生从建设沙盘与参与协同的过程中，体认到各种开源或免费的数据服务，可以系统化地成为机器与群众学习的素材。\",\"topic\":\"推动学生从建设沙盘与参与协同的过程中，体认到各种开源或免费的数据服务，可以系统化地成为机器与群众学习的素材。\",\"children\":[],\"level\":3},{\"id\":\"根据PAC理论等知识框架，让参与者能够经由众学知识库的建设与沙盘的开发过程，体认到整个宇宙都可以是一个不断进化的沙盘。\",\"topic\":\"根据PAC理论等知识框架，让参与者能够经由众学知识库的建设与沙盘的开发过程，体认到整个宇宙都可以是一个不断进化的沙盘。\",\"children\":[],\"level\":3},{\"id\":\"2016年跨学科系统集成设计挑战-自我提升与进化的系统\",\"topic\":\"2016年跨学科系统集成设计挑战-自我提升与进化的系统\",\"children\":[],\"level\":3},{\"id\":\"2016年跨学科系统集成设计挑战-任务执行方\",\"topic\":\"2016年跨学科系统集成设计挑战-任务执行方\",\"children\":[],\"level\":3}],\"level\":2},{\"id\":\"预期效果（功能需求）\",\"topic\":\"预期效果（功能需求）\",\"children\":[{\"id\":\"人才团队灵活重组\",\"topic\":\"人才团队灵活重组\",\"children\":[],\"level\":3},{\"id\":\"群体顺畅协同\",\"topic\":\"群体顺畅协同\",\"children\":[],\"level\":3},{\"id\":\"沙盘展示效果\",\"topic\":\"沙盘展示效果\",\"children\":[],\"level\":3}],\"level\":2},{\"id\":\"输出（设计参数）\",\"topic\":\"输出（设计参数）\",\"children\":[{\"id\":\"可供后续任务执行方反复访问与修订的实体沙盘，以及可作为模板参考的网页、宣传文件\",\"topic\":\"可供后续任务执行方反复访问与修订的实体沙盘，以及可作为模板参考的网页、宣传文件\",\"children\":[],\"level\":3},{\"id\":\"可在全球互联网上访问的MediaWiki知识库，包括课程执行过程中的各种2016年跨学科系统集成设计挑战-输出-过程数据|过程数据，如视频、总结性文件等\",\"topic\":\"可在全球互联网上访问的MediaWiki知识库，包括课程执行过程中的各种2016年跨学科系统集成设计挑战-输出-过程数据|过程数据，如视频、总结性文件等\",\"children\":[],\"level\":3},{\"id\":\"采集各类知识内容的访问量或器材资源的消耗数量\",\"topic\":\"采集各类知识内容的访问量或器材资源的消耗数量\",\"children\":[],\"level\":3},{\"id\":\"经过各类人工或自动化手段所整理出来的引导性文件或测试能力用的题库与统计方式\",\"topic\":\"经过各类人工或自动化手段所整理出来的引导性文件或测试能力用的题库与统计方式\",\"children\":[],\"level\":3}],\"level\":2},{\"id\":\"过程（工作流程）\",\"topic\":\"过程（工作流程）\",\"children\":[{\"id\":\"挑战设计方的准备工作\",\"topic\":\"挑战设计方的准备工作\",\"children\":[],\"level\":3},{\"id\":\"任务执行方在四天(连续80小时)之前的准备过程\",\"topic\":\"任务执行方在四天(连续80小时)之前的准备过程\",\"children\":[],\"level\":3},{\"id\":\"任务执行方的四天(连续80小时)体验过程\",\"topic\":\"任务执行方的四天(连续80小时)体验过程\",\"children\":[],\"level\":3},{\"id\":\"全体参与者的成果展示会\",\"topic\":\"全体参与者的成果展示会\",\"children\":[],\"level\":3},{\"id\":\"挑战设计方的2016年跨学科系统集成设计挑战-活动-知识库编撰|知识库编撰工作\",\"topic\":\"挑战设计方的2016年跨学科系统集成设计挑战-活动-知识库编撰|知识库编撰工作\",\"children\":[],\"level\":3}],\"level\":2},{\"id\":\"输入（资源准备）\",\"topic\":\"输入（资源准备）\",\"children\":[{\"id\":\"格式规范\",\"topic\":\"格式规范\",\"children\":[],\"level\":3},{\"id\":\"2016年跨学科系统集成设计挑战-任务执行方名单及联系方式\",\"topic\":\"2016年跨学科系统集成设计挑战-任务执行方名单及联系方式\",\"children\":[],\"level\":3},{\"id\":\"挑战设计方团队\",\"topic\":\"挑战设计方团队\",\"children\":[],\"level\":3},{\"id\":\"器材类\",\"topic\":\"器材类\",\"children\":[],\"level\":3},{\"id\":\"理论基础\",\"topic\":\"理论基础\",\"children\":[],\"level\":3},{\"id\":\"场地\",\"topic\":\"场地\",\"children\":[],\"level\":3}],\"level\":2}],\"level\":1},{\"id\":\"版权声明\",\"topic\":\"版权声明\",\"children\":[],\"level\":1}],\"level\":0}");
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(String project) {
        return new ModelAndView("index").addObject("project", project);
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
        else {
            map.put(project, parser);
            String attributeValue = parser.getContent().toJson();
//            System.out.println(attributeValue);
            return new ModelAndView("jsmind").addObject("data", attributeValue);
        }
    }


    @RequestMapping(value = "/doShow", method = RequestMethod.POST)
    public ModelAndView doShow(String project, String lines) {
        Parser parser = map.get(project);
        String json = "";
        if (parser != null) {
            json = parser.getProcessJson(project, lines);
        }
        // 解析方法
        return new ModelAndView("show").addObject("lines", json);
    }

    private Parser getWikiContent(String project, Wiki wiki) {
        try {
            String text = wiki.getPageText(project);
//            System.out.println(text);
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
