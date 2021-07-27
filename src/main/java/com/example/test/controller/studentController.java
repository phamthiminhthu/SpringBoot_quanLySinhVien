package com.example.test.controller;

import com.example.test.entity.sinhVien;

import com.example.test.service.sinhVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


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
    public String successEdit(sinhVien sv) {
        sinhVienService.editStudent(sv);
        return "redirect:/api/v1/students/all";
    }


    @RequestMapping(value = "/student/add-student", method = RequestMethod.POST)
    public String addStudent(@RequestParam("name") String name, @RequestParam("email") String email,
                             @RequestParam("password") String password, @RequestParam("address") String address,
                             @RequestParam("dateOfBirth") String dateOfBirth) {
        System.out.println(name);
        sinhVienService.addListStudent(name, email, password, address, dateOfBirth);
        return "redirect:/api/v1/students/all";

    }



}
