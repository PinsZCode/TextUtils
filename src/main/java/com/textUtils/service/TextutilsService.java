package com.textUtils.service;

import org.springframework.stereotype.Service;

@Service
public class TextutilsService {

    public int countWords(String text) {
        return text.split("\\s+").length;
    }

    public int countCharacters(String text) {
        return text.replaceAll("\\s", "").length();
    }

    public String reverseText(String text) {
        return new StringBuilder(text).reverse().toString();
    }

    public String toUpperCase(String text){
        return text.toUpperCase();
    }

}

