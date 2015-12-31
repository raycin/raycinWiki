package com.raycin.wiki;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by surfront on 2015/12/31.
 */
public class WikiEntry {

    private String id;
    private String topic;
    private String direction = "right";
    private List<WikiEntry> children = new ArrayList<>();

    public WikiEntry(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public List<WikiEntry> getChildren() {
        return children;
    }

    public void setChildren(List<WikiEntry> children) {
        this.children = children;
    }
}
