package com.app.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.entity.User;
import com.app.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SignupController {

    @Autowired
    private JavaMailSender mailSender;

    @Autowired
    private UserRepository userRepo;

    @PostMapping("/signup")
    public String signup(@ModelAttribute User user, ModelMap model, HttpSession session) {
        // Generate OTP
        int otp = new Random().nextInt(9000) + 1000; // 4-digit OTP
        session.setAttribute("otp", otp);
        session.setAttribute("tempUser", user);

        // Send OTP email
        sendOtpEmail(user.getEmailId(), otp);

        // Go to OTP page
        return "otpPage";
    }

    @PostMapping("/verifyOTP")
    public String verifyOTP(@RequestParam("otp") int enteredOtp, HttpSession session) {
        int sessionOtp = (int) session.getAttribute("otp");

        if (enteredOtp == sessionOtp) {
            User user = (User) session.getAttribute("tempUser");
            userRepo.save(user);
            session.removeAttribute("otp");
            session.removeAttribute("tempUser");
            return "OTPSuccess"; // success.jsp
        } else {
            return "OTPFailed"; // OTP incorrect page
        }
    }

    private void sendOtpEmail(String email, int otp) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject("Your OTP Verification Code");
        message.setText("Your OTP is: " + otp + "\n\nIt will expire in 5 minutes.");
        mailSender.send(message);
    }
}
