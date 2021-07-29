package com.example.test.service;

import com.example.test.entity.sinhVien;
import com.example.test.repository.sinhVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import lombok.Builder;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
@Transactional(rollbackFor = {Exception.class})
@Builder
public class sinhVienService {

    private sinhVienRepository sinhVienRepository;

    @Autowired
    public sinhVienService(sinhVienRepository svRepository) {
        this.sinhVienRepository = svRepository;
    }

    public List<sinhVien> getListSinhVien() {
        return sinhVienRepository.findAll(Example.of(sinhVien.builder().id(0).name(null).dateOfBirth(null).email(null).address(null).password(null).deleted(false).build(), ExampleMatcher.matchingAll().withIgnorePaths("id", "name", "dateOfBirth", "email", "password").withIgnoreCase()), Sort.by(Sort.Direction.ASC, "name"));
    }

    public sinhVien getStudentById(int id) {
        Optional<sinhVien> sinhVienOp = sinhVienRepository.findById(id);
        if (sinhVienOp.isPresent())
            return sinhVienOp.get();
        return null;
    }

    public void deleteStudent(sinhVien sv) {
        sv.setDeleted(true);
        sinhVienRepository.save(sv);
    }

    public void editStudent(sinhVien sv) {
        sv.setName(sv.getName());
        sv.setEmail(sv.getEmail());
        sv.setAddress(sv.getAddress());
        sv.setPassword(sv.getPassword());
        sv.setDateOfBirth(sv.getDateOfBirth());
        sinhVienRepository.save(sv);
    }

    public boolean checkAccount(String email, String password) {
        for (sinhVien sinhVien : getListSinhVien()) {
            if (email.equals(sinhVien.getEmail()) && password.equals(sinhVien.getPassword()))
                return true;
        }
        return false;
    }

    public void addListStudent(sinhVien sv) {
        sinhVienRepository.save(sv);
    }

    public List<sinhVien> searchListSv(String name) {
        return sinhVienRepository.findAll(Example.of(sinhVien.builder().id(0).name(name).password(null).dateOfBirth(null).email(null).address(null).deleted(false).build(), ExampleMatcher.matchingAll().withIgnorePaths("password", "dateOfBirth", "address", "email", "id").withIgnoreCase().withMatcher("name", ExampleMatcher.GenericPropertyMatchers.contains())));
    }


}
