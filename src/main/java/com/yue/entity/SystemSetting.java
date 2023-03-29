package com.yue.entity;


public class SystemSetting {

  private long id;
  private String settingName;
  private String settingValue;


  public SystemSetting() {
  }

  public SystemSetting(long id, String settingName, String settingValue) {
    this.id = id;
    this.settingName = settingName;
    this.settingValue = settingValue;
  }

  @Override
  public String toString() {
    return "SystemSetting{" +
            "id=" + id +
            ", settingName='" + settingName + '\'' +
            ", settingValue='" + settingValue + '\'' +
            '}';
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getSettingName() {
    return settingName;
  }

  public void setSettingName(String settingName) {
    this.settingName = settingName;
  }


  public String getSettingValue() {
    return settingValue;
  }

  public void setSettingValue(String settingValue) {
    this.settingValue = settingValue;
  }

}
