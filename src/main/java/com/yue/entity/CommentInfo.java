package com.yue.entity;


import com.alibaba.fastjson.annotation.JSONField;

import java.sql.Timestamp;

public class CommentInfo {

  private long id;
  private long userId;
  private String userName;
  private long bookId;

  private String bookTitle;
  private String content;
  private double rating;
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Timestamp commentTime;


  private double avgRating;

  public CommentInfo() {
  }

  public CommentInfo(long id, long userId, String userName, long bookId, String bookTitle, String content, double rating, Timestamp commentTime, double avgRating) {
    this.id = id;
    this.userId = userId;
    this.userName = userName;
    this.bookId = bookId;
    this.bookTitle = bookTitle;
    this.content = content;
    this.rating = rating;
    this.commentTime = commentTime;
    this.avgRating = avgRating;
  }

  @Override
  public String toString() {
    return "CommentInfo{" +
            "id=" + id +
            ", userId=" + userId +
            ", userName='" + userName + '\'' +
            ", bookId=" + bookId +
            ", bookTitle='" + bookTitle + '\'' +
            ", content='" + content + '\'' +
            ", rating=" + rating +
            ", commentTime=" + commentTime +
            ", avgRating=" + avgRating +
            '}';
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
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

  public double getAvgRating() {
    return avgRating;
  }

  public void setAvgRating(double avgRating) {
    this.avgRating = avgRating;
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


  public double getRating() {
    return rating;
  }

  public void setRating(double rating) {
    this.rating = rating;
  }


  public Timestamp getCommentTime() {
    return commentTime;
  }

  public void setCommentTime(Timestamp commentTime) {
    this.commentTime = commentTime;
  }

}
