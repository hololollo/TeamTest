package com.spring.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
    private String userid;
    private String password;
    private String usercfpw;
    private String name;
    private String year;
    private String month;
    private String day;
    private String gender;
    private String postcode;
    private String roadaddr1;
    private String roadaddr2;
}
