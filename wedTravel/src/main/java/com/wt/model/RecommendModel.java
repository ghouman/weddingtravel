package com.wt.model;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-5
 * Time: 下午11:21
 * To change this template use File | Settings | File Templates.
 */
public class RecommendModel implements Serializable {
    public int id ;
    public String title;
    public String content;
    public String imgUrl;
    public String linkUrl;
    public String picUrl;
    public int module_id;

    public int getModule_id() {
        return module_id;
    }

    public void setModule_id(int module_id) {
        this.module_id = module_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getLinkUrl() {
        return linkUrl;
    }

    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }
}
