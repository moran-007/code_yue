package com.yue.entity;


public class AdminInfo {

  private long id;
  private String adminName;
  private String adminPassword;
  private String adminFullname;
  private String adminContact;

  public AdminInfo() {
  }

  public AdminInfo(long id, String adminName, String adminPassword, String adminFullname, String adminContact) {
    this.id = id;
    this.adminName = adminName;
    this.adminPassword = adminPassword;
    this.adminFullname = adminFullname;
    this.adminContact = adminContact;
  }

  @Override
  public String toString() {
    return "AdminInfo{" +
            "id=" + id +
            ", adminName='" + adminName + '\'' +
            ", adminPassword='" + adminPassword + '\'' +
            ", adminFullname='" + adminFullname + '\'' +
            ", adminContact='" + adminContact + '\'' +
            '}';
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getAdminName() {
    return adminName;
  }

  public void setAdminName(String adminName) {
    this.adminName = adminName;
  }


  public String getAdminPassword() {
    return adminPassword;
  }

  public void setAdminPassword(String adminPassword) {
    this.adminPassword = adminPassword;
  }


  public String getAdminFullname() {
    return adminFullname;
  }

  public void setAdminFullname(String adminFullname) {
    this.adminFullname = adminFullname;
  }


  public String getAdminContact() {
    return adminContact;
  }

  public void setAdminContact(String adminContact) {
    this.adminContact = adminContact;
  }

}
