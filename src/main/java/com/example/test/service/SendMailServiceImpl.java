package com.example.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

public class SendMailServiceImpl implements SendMailService {
    @Autowired
    private JavaMailSender javaMailSender;

    @Value("${spring.mail.username}")
    private String emailSender;

    @Override
    public boolean sendMail(String userMail, String header, String content) {
        try {
            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setTo(userMail);
            mailMessage.setFrom(emailSender);
            mailMessage.setSubject(header);
            mailMessage.setText(content);
            javaMailSender.send(mailMessage);
            return true;
        } catch (MailException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean sendHtmlMail(String userMail, String header, String content) {


        return false;
    }
}
