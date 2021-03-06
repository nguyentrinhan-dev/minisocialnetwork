/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dtos;

import java.sql.Date;

/**
 *
 * @author Lenovo
 */
public class UserDTO {
    /**
     * email varchar(50) NOT NULL PRIMARY KEY,
	firstname nvarchar(18) NOT NULL,
	lastname nvarchar(18) NOT NULL,
	password varchar(64) NOT NULL,
	registerdate date,
	roleID int NOT NULL FOREIGN KEY REFERENCES tblRoles(roleID),
	statusID int NOT NULL FOREIGN KEY REFERENCES tblStatus(statusID),
     */
    private String email, firstname, lastname, password;
    private Date registerdate;
    private int roleid, statusid;

    public UserDTO() {
    }

    public UserDTO(String email, String firstname, String lastname, String password, Date registerdate, int roleid, int statusid) {
        this.email = email;
        this.firstname = firstname;
        this.lastname = lastname;
        this.password = password;
        this.registerdate = registerdate;
        this.roleid = roleid;
        this.statusid = statusid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRegisterdate() {
        return registerdate;
    }

    public void setRegisterdate(Date registerdate) {
        this.registerdate = registerdate;
    }

    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }

    public int getStatusid() {
        return statusid;
    }

    public void setStatusid(int statusid) {
        this.statusid = statusid;
    }
    
}
