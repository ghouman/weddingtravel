package com.wt.model;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-13
 * Time: 上午12:52
 * To change this template use File | Settings | File Templates.
 */

import java.io.Serializable;

/**
 * @author
 *
 */
public class ApplicationEmail implements Serializable {

    public String getAddressee() {
        return addressee;
    }
    public void setAddressee(String addressee) {
        this.addressee = addressee;
    }
    public String getCc() {
        return cc;
    }
    public void setCc(String cc) {
        this.cc = cc;
    }
    public String getSubject() {
        return subject;
    }
    public void setSubject(String subject) {
        this.subject = subject;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }

    /**收件人**/
    private String addressee;
     /**抄送给**/
    private String cc;
     /**邮件主题**/
    private String subject;
      /**邮件内容**/
    private String content;
     /**附件**/
    //private MultipartFile[] attachment = new MultipartFile[0];


}
