package com.yue.entity;


import com.alibaba.fastjson.annotation.JSONField;

import java.sql.Timestamp;

public class CommentInfo {

  private long id;
  private long userId;
  private long bookId;
  private String content;
  private long rating;
  @JSONField(format = "YYYY-MM-DD HH:mm:ss")
  private Timestamp commentTime;

  public CommentInfo() {
  }

  public CommentInfo(long id, long userId, long bookId, String content, long rating, Timestamp commentTime) {
    this.id = id;
    this.userId = userId;
    this.bookId = bookId;
    this.content = content;
    this.rating = rating;
    this.commentTime = commentTime;
  }

  @Override
  public String toString() {
    return "CommentInfo{" +
            "id=" + id +
            ", userId=" + userId +
            ", bookId=" + bookId +
            ", content='" + content + '\'' +
            ", rating=" + rating +
            ", commentTime=" + commentTime +
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


  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }


  public long getRating() {
    return rating;
  }

  public void setRating(long rating) {
    this.rating = rating;
  }


  public Timestamp getCommentTime() {
    return commentTime;
  }

  public void setCommentTime(Timestamp commentTime) {
    this.commentTime = commentTime;
  }

}
