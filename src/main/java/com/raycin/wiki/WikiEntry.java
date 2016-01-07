package com.raycin.wiki;

import org.apache.commons.lang3.StringUtils;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.ObjectMapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by surfront on 2015/12/31.
 */
public class WikiEntry {

    private String id;
    private String topic;
    private String direction = "right";
    private List<WikiEntry> children = new ArrayList<>();
    private WikiEntry parent;
    private int level;

    public WikiEntry(String id) {
        this.id = id;
        this.topic = id;
    }

    //    @JsonIgnore
    public String getId() {
        return StringUtils.substringBefore(id, "：");
    }

    public void setId(String id) {
        this.id = id;
    }

    //    @JsonIgnore
    public String getTopic() {
        return StringUtils.substringBefore(topic, "：");
    }

    @JsonIgnore
    public String getName() {
        return StringUtils.substringBefore(id, "：");
    }

    public List<WikiEntry> getChildren() {
        return children;
    }

    public void setChildren(List<WikiEntry> children) {
        this.children = children;
    }

    //    @JsonIgnore
    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public void addChild(WikiEntry child) {
        children.add(child);
    }

    @JsonIgnore
    public WikiEntry getParent() {
        return parent;
    }

    public void setParent(WikiEntry parent) {
        this.parent = parent;
    }

    @Override
    public String toString() {
        return "WikiEntry{" +
                "id='" + id + '\'' +
                ", topic='" + topic + '\'' +
                ", direction='" + direction + '\'' +
                ", children=" + children.toString() +
//                ", parent=" + parent +
                ", level=" + level +
                "}\n";
    }

    public String toJson() {
        try {
            ObjectMapper mapper = new ObjectMapper();
            return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(this);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }
}
