package com.yue.entity;


import com.alibaba.fastjson.annotation.JSONField;

import java.sql.Timestamp;

public class RenewalInfo {

  private long id;
  private long reserveId;
  private String userName;
  private String bookTitle;
  private long userId;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp renewalTime;
  private long adminId;
  private long status;
  private String remark;

  public RenewalInfo() {
  }

  @Override
  public String toString() {
    return "RenewalInfo{" +
            "id=" + id +
            ", reserveId=" + reserveId +
            ", userName='" + userName + '\'' +
            ", bookTitle='" + bookTitle + '\'' +
            ", userId=" + userId +
            ", renewalTime=" + renewalTime +
            ", adminId=" + adminId +
            ", status=" + status +
            ", remark='" + remark + '\'' +
            '}';
  }

  public RenewalInfo(long id, long reserveId, String userName, String bookTitle, long userId, Timestamp renewalTime, long adminId, long status, String remark) {
    this.id = id;
    this.reserveId = reserveId;
    this.userName = userName;
    this.bookTitle = bookTitle;
    this.userId = userId;
    this.renewalTime = renewalTime;
    this.adminId = adminId;
    this.status = status;
    this.remark = remark;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public long getReserveId() {
    return reserveId;
  }

  public void setReserveId(long reserveId) {
    this.reserveId = reserveId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public String getBookTitle() {
    return bookTitle;
  }

  public void setBookTitle(String bookTitle) {
    this.bookTitle = bookTitle;
  }

  public Timestamp getRenewalTime() {
    return renewalTime;
  }

  public void setRenewalTime(Timestamp renewalTime) {
    this.renewalTime = renewalTime;
  }


  public long getAdminId() {
    return adminId;
  }

  public void setAdminId(long adminId) {
    this.adminId = adminId;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }


  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

}
