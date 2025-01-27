package com.example.flip.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.flip.demo.model.Names;
import com.example.flip.demo.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class NameController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public ModelAndView homePage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }
    
    @GetMapping("/Bondchecker")
    public ModelAndView SpinPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Bondchecker");
        return mv;
    }

    @PostMapping("/insertuser")
    public ModelAndView insertUser(HttpServletRequest request) {
        String hisName = request.getParameter("hisName");
        String herName = request.getParameter("herName");

        Names user = new Names();
        user.setHisName(hisName);
        user.setHerName(herName);

        userService.saveDetails(user);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/Bondchecker");
        mv.addObject("hisName", hisName);  // Add hisName to the model
        mv.addObject("herName", herName);  // Add herName to the model
        mv.addObject("message", "Names saved successfully!");

        return mv;
    }

}
