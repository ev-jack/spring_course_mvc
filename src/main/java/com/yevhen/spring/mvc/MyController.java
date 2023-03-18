package com.yevhen.spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
//        Employee emp = new Employee();
//        emp.setName("Jorjo");
//        emp.setSurName("Marigamo");
//        emp.setSalary(500);
        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view";
    }


    @PostMapping("/showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee emp,
                                 BindingResult bindingResult) {

//        System.out.println("surname length = " + emp.getSurName().length());

        if (bindingResult.hasErrors())
            return "ask-emp-details-view";
        else
            return "show-emp-details-view";

    }

}
