package com.wt.service;

import com.wt.model.ApplicationEmail;

import javax.mail.MessagingException;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: ghm
 * Date: 14-5-13
 * Time: 上午12:55
 * To change this template use File | Settings | File Templates.
 */
public interface Mailer {
    public void sendMailBySynchronizationMode(ApplicationEmail email) throws MessagingException, IOException;
    public void sendMailByAsynchronousMode(final ApplicationEmail email);
}
