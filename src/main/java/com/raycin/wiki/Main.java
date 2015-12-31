package com.raycin.wiki;


import javax.security.auth.login.CredentialNotFoundException;
import javax.security.auth.login.FailedLoginException;
import java.io.IOException;

/**
 * Created by surfront on 2015/12/30.
 */
public class Main {

    public static void main(String[] args) throws IOException, FailedLoginException, CredentialNotFoundException {

//        String[] listOfTitleStrings = {"Toyhouse_Studio"};
//        User user = new User("杨凡", "123", "http://toyhouse.ie.tsinghua.edu.cn/wiki/api.php");
//        System.out.println(user.login());
////        user = new User("Yuyc", "123", "http://toyhouse.ie.tsinghua.edu.cn/wiki/api.php");
////        System.out.println(user.login());
//        List<Page> listOfPages = user.queryContent(listOfTitleStrings);
//        System.out.println(listOfPages);
//        for (Page page : listOfPages) {
//            WikiModel wikiModel = new WikiModel("${image}", "${title}");
//            String html = wikiModel.render(page.toString());
//            System.out.println(html);
//        }
        Wiki wiki = new Wiki("toyhouse.ie.tsinghua.edu.cn","/wiki","http://");
        wiki.setUsingCompressedRequests(false);
        wiki.login("杨凡", "123");
        String text = wiki.export("2016年跨学科系统集成设计挑战");
        System.out.println(text);
        text = wiki.getPageText("2016年跨学科系统集成设计挑战");
        System.out.println(text);


    }

}
