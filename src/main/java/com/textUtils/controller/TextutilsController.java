package com.textUtils.controller;

import com.textUtils.service.TextutilsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class TextutilsController {

    @Autowired
    TextutilsService textUtilsService;

    @RequestMapping("/view-home-page")
    public String home(){
        return "textutils";
    }

    @RequestMapping("/view-about-page")
    public String about(){
        return "about";
    }

    @RequestMapping("/analyze")
    public String analyzeText(@RequestParam("inputText") String inputText, Model model) {
        int wordCount = textUtilsService.countWords(inputText);
        int charCount = textUtilsService.countCharacters(inputText);
        String reversedText = textUtilsService.reverseText(inputText);
        String upperCase = textUtilsService.toUpperCase(inputText);

        model.addAttribute("inputText", inputText);
        model.addAttribute("wordCount", wordCount);
        model.addAttribute("charCount", charCount);
        model.addAttribute("reversedText", reversedText);
        model.addAttribute("upperCase",upperCase);

        return "textutils";
    }
}
