package com.raycin.wiki;


import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.codehaus.jackson.map.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * Created by surfront on 2015/12/31.
 */
public class Parser {
    private final List<String> lines;
    private final String project;
    private WikiEntry data;

    public Parser(String project, String content) {
        this.project = project;
        this.lines = Arrays.asList(content.split("\\n"));
    }

    public Parser(String project, List<String> lines) {
        this.project = project;
        this.lines = lines;
    }

    public WikiEntry getContent() {
        if (data == null)
            data = parse();
        return data;
    }

    private WikiEntry parse() {
        WikiEntry root = new WikiEntry(project);
        root.setLevel(0);
        WikiEntry last = root;
        int lastHeadLevel = 0;
        for (String line : lines) {
            if (StringUtils.isBlank(line))
                continue;
            line = line.trim();
            String title = getTitle(line);
            if (StringUtils.isBlank(title)) {
                line = StringUtils.replaceEach(line, new String[]{"[", "]"}, new String[]{"", ""});
                last.addTopic(line);
                continue;
            }
            String content = "";
            int level = 1;
            if ("=".equals(title)) {
                for (int i = 1; i < 8; i++) {
                    content = StringUtils.substringBetween(line, StringUtils.repeat(title, i));
                    if (StringUtils.isNoneBlank(content)) {
                        level = i;
                        lastHeadLevel = i;
                        break;
                    }
                }
            } else {
                for (int i = 7; i > 0; i--) {
                    String repeat = StringUtils.repeat(title, i);
                    boolean startsWith = StringUtils.startsWith(line, repeat);
                    if (!startsWith)
                        continue;
                    content = StringUtils.remove(line, repeat);
                    if (StringUtils.isNoneBlank(content)) {
                        level = i + lastHeadLevel;
                        break;
                    }
                }
            }
            if (StringUtils.isNoneBlank(content)) {
                content = StringUtils.replaceEach(content, new String[]{"[", "]"}, new String[]{"", ""});
                WikiEntry entry = new WikiEntry(content);
                entry.setLevel(level);
                WikiEntry parent = getParent(last, level, root);
                parent.addChild(entry);
                entry.setParent(parent);
                last = entry;
            }
        }
        return root;
    }

    private WikiEntry getParent(WikiEntry last, int currentLevel, WikiEntry root) {
        if (last == null || last.getLevel() == 0)
            return root;
        int i = currentLevel - 1;
        if (last.getLevel() <= i)
            return last;
        else
            return getParent(last.getParent(), currentLevel, root);
    }

    private String getTitle(String line) {
        switch (String.valueOf(line.charAt(0))) {
            case "=":
                return "=";
            case "#":
                return "#";
            case "*":
                return "*";
            default:
                return "";

        }
    }

    public static void main(String[] args) throws IOException {
        String content = FileUtils.readFileToString(new File("d:\\test1.txt"), "utf-8");
        Parser parser = new Parser("test", content);
        WikiEntry wikiEntry = parser.getContent();
        System.out.println(wikiEntry);
        System.out.println(wikiEntry.toJson());
    }

}
