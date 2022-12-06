package com.master.grow.system.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {

	@RequestMapping("/")
    public String viewMapping(HttpServletRequest request , HttpServletResponse response){
        return "main";
    }

    @RequestMapping(value = "/{viewName}")
    public String view(@PathVariable String viewName ) {
        System.out.println("요청 VIEW: " + "/" + viewName);
        return viewName;
    }

    @RequestMapping(value="/{folder}/{viewName}")
    public String packView(@PathVariable String folder, @PathVariable String viewName) {
        System.out.println("경로 : "+folder+" "+" 요청 VIEW : "+viewName);
        return folder+"/"+viewName;
    }
}
