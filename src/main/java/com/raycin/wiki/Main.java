package com.raycin.wiki;


import javax.security.auth.login.CredentialNotFoundException;
import javax.security.auth.login.FailedLoginException;
import java.io.IOException;
import java.util.stream.Stream;

/**
 * Created by surfront on 2015/12/30.
 */
public class Main {
    public static void main(String[] args) throws IOException, FailedLoginException, CredentialNotFoundException {
        Wiki wiki = new Wiki("toyhouse.ie.tsinghua.edu.cn","/wiki","http://");
        wiki.setUsingCompressedRequests(false);
        wiki.login("杨凡", "123");
        String text = wiki.getPageText("2016年跨学科系统集成设计挑战");
        System.out.println(text);
        String[] links = wiki.getLinksOnPage("2016年跨学科系统集成设计挑战");
        Stream.of(links).forEach(System.out::println);
    }

}
