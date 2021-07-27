package com.example.test.entity;

import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "student")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class sinhVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "name", nullable = false)
    private String name;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    @Column(name = "date_of_birth", nullable = false)
    private Date dateOfBirth;

    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "password", nullable = false)
    private String password;


    @Column(name = "deleted")
    private boolean deleted;


}
