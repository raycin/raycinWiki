package com.raycin.wiki;

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
    private List<String> topic = new ArrayList<>();
    private String direction = "right";
    private List<WikiEntry> children = new ArrayList<>();
    private WikiEntry parent;
    private int level;

    public WikiEntry(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public List<String> getTopic() {
        return topic;
    }

    public void setTopic(List<String> topic) {
        this.topic = topic;
    }

    public void addTopic(String topic) {
        this.topic.add(topic);
    }

    public List<WikiEntry> getChildren() {
        return children;
    }

    public void setChildren(List<WikiEntry> children) {
        this.children = children;
    }

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
                ", topic='" + topic.stream().collect(Collectors.joining("\n")).toString() + '\'' +
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
