package com.example.mysite.user;


import jakarta.persistence.*;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.cglib.core.Local;

import java.time.LocalDateTime;

@Table(name = "user_tb")
@Entity
@Getter
@NoArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(unique = true, length = 15)
    private String username; // 아이디

    @Column(nullable = false, length = 10)
    private String password; //패스워드

    @Column(nullable = false)
    private String email; //이메일

    @CreationTimestamp
    private LocalDateTime createdAt;

    @Builder
    public User(Integer id, String username, String password, String email, LocalDateTime createdAt) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.createdAt = createdAt;
    }
}
