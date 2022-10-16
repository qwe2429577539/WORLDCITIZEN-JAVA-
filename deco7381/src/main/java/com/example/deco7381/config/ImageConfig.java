package com.example.deco7381.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class ImageConfig implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        String property ="file:"+System.getProperty("user.dir")+"\\deco7381\\src\\main\\resources\\static\\img\\";
        String path=property.replaceAll("\\\\","/");
        String test="file:D:/deco7381/deco7381/src/main/resources/static/img/";
        registry.addResourceHandler("/img/**").addResourceLocations(path);

    }
}
