package net.manxlei.springboot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavigationController {

    @RequestMapping({"/home"})
    public String home() {
        return "charts";
    }
}
