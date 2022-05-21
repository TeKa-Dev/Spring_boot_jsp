package com.ctrl;

import com.sign.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.validation.Valid;

@Controller
public class AppController {

    @RequestMapping("/")
    public String main(Model model) {
        model.addAttribute("User", new  User());
        return "main_pg";
    }

    @RequestMapping("/sign_up")
    public String signUp(Model model) {
        model.addAttribute("User", new User());
        return "sign_pg";
    }

    @RequestMapping("/login")
    public String login(@Valid @ModelAttribute("User") User user, BindingResult br) {

        if (br.hasErrors()) {return "sign_pg";}
        else {
            user.setName(user.getName().toUpperCase());
            user.setAge(2022 - user.getAge());
            return "login_pg";
        }
    }
}
