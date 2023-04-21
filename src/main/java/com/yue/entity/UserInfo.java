package com.yue.entity;


import com.alibaba.fastjson.annotation.JSONField;

import java.sql.Timestamp;

public class UserInfo {

  private long id;
  private String username;
  private String password;
  private String phone;
  private String email;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp createTime;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp updateTime;

  private String adminId;



  public UserInfo() {
  }

  public UserInfo(long id, String username, String password, String phone, String email, Timestamp createTime, Timestamp updateTime, String adminId) {
    this.id = id;
    this.username = username;
    this.password = password;
    this.phone = phone;
    this.email = email;
    this.createTime = createTime;
    this.updateTime = updateTime;
    this.adminId = adminId;
  }

  @Override
  public String toString() {
    return "UserInfo{" +
            "id=" + id +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", phone='" + phone + '\'' +
            ", email='" + email + '\'' +
            ", createTime=" + createTime +
            ", updateTime=" + updateTime +
            ", adminId=" + adminId +
            '}';
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public Timestamp getCreateTime() {
    return createTime;
  }

  public void setCreateTime(Timestamp createTime) {
    this.createTime = createTime;
  }


  public Timestamp getUpdateTime() {
    return updateTime;
  }

  public void setUpdateTime(Timestamp updateTime) {
    this.updateTime = updateTime;
  }


  public String getAdminId() {
    return adminId;
  }

  public void setAdminId(String adminId) {
    this.adminId = adminId;
  }
}
