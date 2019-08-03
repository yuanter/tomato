package com.wmg.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.text.SimpleDateFormat;
import java.util.Date;

@Data//lombok插件，实现所有的getting和setting方法
public class User{

//时间工具
SimpleDateFormat Format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

private Long UID;
private String studentID;//学号
private String password;//密码
private String userNickName;//用户昵称
private String name;//用户姓名
private String tel;//电话
private String email;//邮箱
private String sex;//性别
private Integer userSign;//用户标识
private String IDCard;//身份证
private String UserAddress;//用户地址
@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
@JsonFormat(
        pattern = "yyyy-MM-dd HH:mm:ss",
        timezone = "GMT+8"//jackson在序列化时间时是按照国际标准时间GMT进行格式化的，而在国内默认时区使用的是CST时区，两者相差8小时。
)
private Date RegistrationTime;//用户注册时间
@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
@JsonFormat(
        pattern = "yyyy-MM-dd HH:mm:ss",
        timezone = "GMT+8"
)
private Date modifyTime;//用户修改信息时间

@Override
public String toString(){
        return"User [UID="+UID+", studentID="+studentID+", password="+password+", userNickName="
        +userNickName+", name="+name+", tel="+tel+", email="+email+", sex="+sex
        +", userSign="+userSign+", IDCard="+IDCard+", UserAddress="+UserAddress
        +", RegistrationTime="+RegistrationTime+", modifyTime="+modifyTime+"]";
        }
        }
