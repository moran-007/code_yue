package com.yue.entity;


import com.alibaba.fastjson.annotation.JSONField;

import java.sql.Timestamp;

public class FineInfo {

  private long id;
  private long userId;
  private long bookId;
  private double fineAmount;
  @JSONField(format = "YYYY-MM-DD HH:mm:ss")
  private Timestamp fineTime;
  private long status;


  public FineInfo() {
  }

  public FineInfo(long id, long userId, long bookId, double fineAmount, Timestamp fineTime, long status) {
    this.id = id;
    this.userId = userId;
    this.bookId = bookId;
    this.fineAmount = fineAmount;
    this.fineTime = fineTime;
    this.status = status;
  }

  @Override
  public String toString() {
    return "FineInfo{" +
            "id=" + id +
            ", userId=" + userId +
            ", bookId=" + bookId +
            ", fineAmount=" + fineAmount +
            ", fineTime=" + fineTime +
            ", status=" + status +
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


  public double getFineAmount() {
    return fineAmount;
  }

  public void setFineAmount(double fineAmount) {
    this.fineAmount = fineAmount;
  }


  public Timestamp getFineTime() {
    return fineTime;
  }

  public void setFineTime(Timestamp fineTime) {
    this.fineTime = fineTime;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }

}
