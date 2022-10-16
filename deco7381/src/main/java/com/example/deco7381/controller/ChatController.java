package com.example.deco7381.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@Controller
@CrossOrigin
@RestController
@RequestMapping("/chat")
public class ChatController {
    /**
     * Recommended chatting topics when chatting
     * @return
     */
    @RequestMapping("/getTopics")
    public HashMap<String,Object> recommendedChattingTopics(){
        //initialize a hashmap for storing the chatting topics
        HashMap<String,Object> chattingTopics = new HashMap<>();
        //different topics
        chattingTopics.put("Food","What's your favourite food?");
        chattingTopics.put("Travel","Have u ever been to American?");
        chattingTopics.put("Mood","How's your day going so far?");
        chattingTopics.put("Study","Would u like to go to library together?");
        //return the hashmap
        return chattingTopics;
    }
}
