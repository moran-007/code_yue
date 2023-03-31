package com.yue.entity;


import com.alibaba.fastjson.annotation.JSONField;

import java.sql.Timestamp;

public class BorrowInfo {

  private long id;
  private long userId;
  private long bookId;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp borrowTime;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp dueTime;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp returnTime;
  private long status;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp createTime;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp updateTime;


  public BorrowInfo() {
  }

  public BorrowInfo(long id, long userId, long bookId, Timestamp borrowTime, Timestamp dueTime, Timestamp returnTime, long status, Timestamp createTime, Timestamp updateTime) {
    this.id = id;
    this.userId = userId;
    this.bookId = bookId;
    this.borrowTime = borrowTime;
    this.dueTime = dueTime;
    this.returnTime = returnTime;
    this.status = status;
    this.createTime = createTime;
    this.updateTime = updateTime;
  }

  @Override
  public String toString() {
    return "BorrowInfo{" +
            "id=" + id +
            ", userId=" + userId +
            ", bookId=" + bookId +
            ", borrowTime=" + borrowTime +
            ", dueTime=" + dueTime +
            ", returnTime=" + returnTime +
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


  public Timestamp getBorrowTime() {
    return borrowTime;
  }

  public void setBorrowTime(Timestamp borrowTime) {
    this.borrowTime = borrowTime;
  }


  public Timestamp getDueTime() {
    return dueTime;
  }

  public void setDueTime(Timestamp dueTime) {
    this.dueTime = dueTime;
  }


  public Timestamp getReturnTime() {
    return returnTime;
  }

  public void setReturnTime(Timestamp returnTime) {
    this.returnTime = returnTime;
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
