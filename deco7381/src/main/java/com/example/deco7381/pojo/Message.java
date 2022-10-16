package com.example.deco7381.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
/**
 * Object of Message
 */
public class Message {
    private String time;
    private String to;
    private String from;
    private String content;
    private String type;
    private Boolean isRead;
}
