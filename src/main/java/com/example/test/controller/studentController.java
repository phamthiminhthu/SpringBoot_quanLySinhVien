package com.example.test.controller;

import com.example.test.entity.sinhVien;

import com.example.test.service.sinhVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;


@Controller
@RequestMapping("/api/v1/")

public class studentController {

    private sinhVienService sinhVienService;

    @Autowired
    public studentController(sinhVienService sinhVienService) {
        this.sinhVienService = sinhVienService;
    }

    @GetMapping("/students/all")
    public String getAll(Model model) {
        model.addAttribute("students", sinhVienService.getListSinhVien());
        return "page";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login-success")
    public String loginSucess(@RequestParam("email") String email, @RequestParam("password") String password) {
        if (sinhVienService.checkAccount(email, password)) {
            return "redirect:/api/v1/students/all";
        }
        return "redirect:/api/v1/login";
    }


    @GetMapping("/student/{id}/delete")
    public String deleteStudent(@PathVariable("id") int id) {
        if (sinhVienService.getStudentById(id) != null) {
            sinhVien sv = sinhVienService.getStudentById(id);
            sinhVienService.deleteStudent(sv);
        }
        return "redirect:/api/v1/students/all";
    }

    @GetMapping("/student/{id}/edit")
    public String editStudent(@PathVariable("id") int id, Model model) {
        if (sinhVienService.getStudentById(id) != null) {
            sinhVien sv = sinhVienService.getStudentById(id);
            model.addAttribute("svEdit", sv);
        }
        return "edit_information";
    }

    @PostMapping("/student/edit-success/{id}")
    public String successEdit(@Valid sinhVien sv) {
        sinhVienService.editStudent(sv);
        return "redirect:/api/v1/students/all";
    }


    @RequestMapping(value = "/student/add-student", method = RequestMethod.POST)
    public String addStudent(@Valid sinhVien sv, BindingResult result, Model model) {
        if(result.hasErrors()){
            model.addAttribute("error", "chua hop le");
            return "redirect:/api/v1/students/all";
        }
        sinhVienService.addListStudent(sv);
        return "redirect:/api/v1/students/all";

    }


    @GetMapping("/search")
    public String searchField(@RequestParam("name") String name, Model model){
        model.addAttribute("students", sinhVienService.searchListSv(name));
        model.addAttribute("keyword", name);
        return "page";
    }



}
