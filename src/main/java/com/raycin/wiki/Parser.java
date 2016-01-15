package com.raycin.wiki;


import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

/**
 * Created by surfront on 2015/12/31.
 */
public class Parser {
    private List<String> treeLevel = new ArrayList<>();
    private final List<String> lines;
    private final String project;
    private WikiEntry data;
    private Map<String, WikiEntry> entryMap = new HashMap<>();

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
                continue;
            }
            String content = "";
            int level = 1;
            boolean isTreeTitle = false;
            if ("=".equals(title)) {
                for (int i = 1; i < 8; i++) {
                    content = StringUtils.substringBetween(line, StringUtils.repeat(title, i));
                    if (StringUtils.isNoneBlank(content)) {
                        level = i;
                        lastHeadLevel = i;
                        isTreeTitle = true;
                        break;
                    }
                }
            } else {
                for (int i = 7; i > 0; i--) {
                    String repeat = StringUtils.repeat(title, i);
                    boolean startsWith = StringUtils.startsWith(line, repeat);
                    if (!startsWith)
                        continue;
                    if (i > 1)
                        break;
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
                entryMap.put(entry.getId(), entry);
                if (isTreeTitle)
                    treeLevel.add(entry.getId());
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

    public String getProcessJson(String project, String objects) {
        if (objects == null)
            return "";
        String[] processArray = objects.split("===");

        WikiEntry wikiEntry = new WikiEntry(project);

        int num = 1;
        for (String process : processArray) {
            WikiEntry parent = wikiEntry;
            WikiEntry[] entries = getLeafEntries(process);
            for (int i = 0; i < entries.length; i++) {
                WikiEntry entry = entries[i];
                if (entry == null)
                    continue;
                WikiEntry e = new WikiEntry(treeLevel.get(i) + ":" + entry.getId());
                e.setId((num*1000+i)+"");
                parent.addChild(e);
                parent = e;
            }
            num++;
        }
        return wikiEntry.toJson();
    }

    private WikiEntry[] getLeafEntries(String process) {
        String[] leafs = process.split("==");

        WikiEntry[] entries = new WikiEntry[treeLevel.size()];
        for (String leaf : leafs) {
            WikiEntry leafEntry = entryMap.get(leaf);
            if (leafEntry == null)
                continue;
            WikiEntry parent = leafEntry.getParent();
            String parentName = parent == null ? "" : parent.getTopic();
            Optional<Integer> index = treeLevel.parallelStream().filter(parentName::equals).findAny().map(treeLevel::indexOf);
            int idx = index.orElse(-1);
            if (idx != -1) {
                entries[idx] = leafEntry;
            }
        }
        return entries;
    }

    public static void main(String[] args) throws IOException {
        String content = new String(Files.readAllBytes(Paths.get("d:\\test1.txt")));
        Parser parser = new Parser("test", content);
        WikiEntry wikiEntry = parser.getContent();
        System.out.println(wikiEntry);
        System.out.println(wikiEntry.toJson());
        System.out.println(parser.getProcessJson("test", "任务执行方在四天(连续80小时)之前的准备过程==采集各类知识内容的访问量或器材资源的消耗数量==学校作为活的知识库===挑战设计方团队"));
    }

}
