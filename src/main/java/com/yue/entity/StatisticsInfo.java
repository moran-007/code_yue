package com.yue.entity;


public class StatisticsInfo {

  private long id;
  private String bookTitle;
  private String bookType;
  private long borrowCount;

  public StatisticsInfo() {
  }

  public StatisticsInfo(long id, String bookTitle, String bookType, long borrowCount) {
    this.id = id;
    this.bookTitle = bookTitle;
    this.bookType = bookType;
    this.borrowCount = borrowCount;
  }

  @Override
  public String toString() {
    return "StatisticsInfo{" +
            "id=" + id +
            ", bookTitle='" + bookTitle + '\'' +
            ", bookType='" + bookType + '\'' +
            ", borrowCount=" + borrowCount +
            '}';
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getBookTitle() {
    return bookTitle;
  }

  public void setBookTitle(String bookTitle) {
    this.bookTitle = bookTitle;
  }


  public String getBookType() {
    return bookType;
  }

  public void setBookType(String bookType) {
    this.bookType = bookType;
  }


  public long getBorrowCount() {
    return borrowCount;
  }

  public void setBorrowCount(long borrowCount) {
    this.borrowCount = borrowCount;
  }

}
