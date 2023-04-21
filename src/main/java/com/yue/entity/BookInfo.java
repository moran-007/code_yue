package com.yue.entity;


import java.sql.Timestamp;

public class BookInfo {

  private int id;
  private String title;
  private String author;
  private String publisher;
  private String isbn;
  private String category;
  private long status;
  private java.sql.Timestamp createTime;
  private java.sql.Timestamp updateTime;
  private String Particulars;
  private String quantity;

  public BookInfo() {
  }

  public BookInfo(int id, String title, String author, String publisher, String isbn, String category, long status, Timestamp createTime, Timestamp updateTime, String particulars, String quantity) {
    this.id = id;
    this.title = title;
    this.author = author;
    this.publisher = publisher;
    this.isbn = isbn;
    this.category = category;
    this.status = status;
    this.createTime = createTime;
    this.updateTime = updateTime;
    Particulars = particulars;
    this.quantity = quantity;
  }

  @Override
  public String toString() {
    return "BookInfo{" +
            "id=" + id +
            ", title='" + title + '\'' +
            ", author='" + author + '\'' +
            ", publisher='" + publisher + '\'' +
            ", isbn='" + isbn + '\'' +
            ", category='" + category + '\'' +
            ", status=" + status +
            ", createTime=" + createTime +
            ", updateTime=" + updateTime +
            ", Particulars='" + Particulars + '\'' +
            ", quantity=" + quantity +
            '}';
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public String getAuthor() {
    return author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }


  public String getPublisher() {
    return publisher;
  }

  public void setPublisher(String publisher) {
    this.publisher = publisher;
  }


  public String getIsbn() {
    return isbn;
  }

  public void setIsbn(String isbn) {
    this.isbn = isbn;
  }


  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }


  public java.sql.Timestamp getCreateTime() {
    return createTime;
  }

  public void setCreateTime(java.sql.Timestamp createTime) {
    this.createTime = createTime;
  }


  public java.sql.Timestamp getUpdateTime() {
    return updateTime;
  }

  public void setUpdateTime(java.sql.Timestamp updateTime) {
    this.updateTime = updateTime;
  }


  public String getParticulars() {
    return Particulars;
  }

  public void setParticulars(String particulars) {
    this.Particulars = particulars;
  }


  public String getQuantity() {
    return quantity;
  }

  public void setQuantity(String quantity) {
    this.quantity = quantity;
  }

}
