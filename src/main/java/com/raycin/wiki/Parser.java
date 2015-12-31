package com.raycin.wiki;


import org.springframework.util.StringUtils;

/**
 * Created by surfront on 2015/12/31.
 */
public class Parser {
    private final String content;
    private final String project;
    private WikiEntry data;

    public Parser(String project, String content) {
        this.project = project;
        this.content = content;
    }

    public WikiEntry getContent() {
        if (data == null)
            data = parse();
        return data;
    }

    private WikiEntry parse() {
        WikiEntry entry = new WikiEntry(project);
        String[] lines = content.split("\\n");
        WikiEntry child;
        for (String line : lines) {
            if (StringUtils.isEmpty(line))
                continue;
            line = line.trim();
            if ("=".startsWith(line) && "=".endsWith(line)) {
                String id = line.trim().replace("=", "");

                child = new WikiEntry(id);
            }
        }
        return null;
    }

}
