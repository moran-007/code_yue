package com.yue.entity;


import com.alibaba.fastjson.annotation.JSONField;

import java.sql.Timestamp;

public class ReserveInfo {

  private long id;
  private long userId;
  private String userName;
  private String bookTitle;
  private long bookId;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp reserveTime;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp borrowTime;
  private long status;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp createTime;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp updateTime;

  public ReserveInfo() {
  }

  public ReserveInfo(long id, long userId, String userName, String bookTitle, long bookId, Timestamp reserveTime, Timestamp borrowTime, long status, Timestamp createTime, Timestamp updateTime) {
    this.id = id;
    this.userId = userId;
    this.userName = userName;
    this.bookTitle = bookTitle;
    this.bookId = bookId;
    this.reserveTime = reserveTime;
    this.borrowTime = borrowTime;
    this.status = status;
    this.createTime = createTime;
    this.updateTime = updateTime;
  }

  @Override
  public String toString() {
    return "ReserveInfo{" +
            "id=" + id +
            ", userId=" + userId +
            ", userName='" + userName + '\'' +
            ", bookTitle='" + bookTitle + '\'' +
            ", bookId=" + bookId +
            ", reserveTime=" + reserveTime +
            ", borrowTime=" + borrowTime +
            ", status=" + status +
            ", createTime=" + createTime +
            ", updateTime=" + updateTime +
            '}';
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public long getBookId() {
    return bookId;
  }

  public void setBookId(long bookId) {
    this.bookId = bookId;
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

  public Timestamp getReserveTime() {
    return reserveTime;
  }

  public void setReserveTime(Timestamp reserveTime) {
    this.reserveTime = reserveTime;
  }


  public Timestamp getBorrowTime() {
    return borrowTime;
  }

  public void setBorrowTime(Timestamp borrowTime) {
    this.borrowTime = borrowTime;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
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

}
