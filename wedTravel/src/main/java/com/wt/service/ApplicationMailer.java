package com.wt.service;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import com.wt.model.ApplicationEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.task.TaskExecutor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-13
 * Time: 上午12:54
 * To change this template use File | Settings | File Templates.
 */
@Service
public class ApplicationMailer implements Mailer
{
    @Autowired
    private JavaMailSender mailSender;


    @Autowired
    private TaskExecutor taskExecutor;


    @Autowired
    private SimpleMailMessage preConfiguredMessage;


    /**
     * 同步发送邮件
     *
     * @param email
     * @throws com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException
     * @throws java.io.IOException
     */
    public void sendMailBySynchronizationMode(ApplicationEmail email) throws MessagingException, IOException {
         Session session=Session.getDefaultInstance(new Properties());
         MimeMessage mime= new MimeMessage(session);
         MimeMessageHelper helper = new MimeMessageHelper(mime, true, "utf-8");
         helper.setFrom("gonghouman@163.com");//发件人
         helper.setTo(InternetAddress.parse(email.getAddressee()));//收件人
         //helper.setBcc("administrator@chinaptp.com");//暗送
         helper.setReplyTo("gonghouman@sina.com");//回复到
         helper.setSubject(email.getSubject());//邮件主题
         helper.setText(email.getContent(), true);//true表示设定html格式

         mailSender.send(mime);
    }


    /**
     * 异步发送邮件
     *
     * @param email
     */
    public void sendMailByAsynchronousMode(final ApplicationEmail email){  taskExecutor.execute(new Runnable(){
         public void run(){
        try {
              sendMailBySynchronizationMode(email);
             } catch (Exception e) {
            }
         }
      });
    }
}
