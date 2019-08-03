package com.wmg.model;

import lombok.Data;

@Data//lombok插件，实现所有的getting和setting方法
public class Admin {
 	private String adminID;//管理员账号
    private String adminName;//管理员姓名
    private String psw;//密码
    private Integer adminSign;//管理员标识
    private String adminNickName;//管理员显示昵称
    private String notice;//公告
    private String operationLog;//日志
	@Override
	public String toString() {
		return "Admin [adminID=" + adminID + ", adminName=" + adminName + ", psw=" + psw + ", adminSign=" + adminSign
				+ ", adminNickName=" + adminNickName + ", notice=" + notice + ", operationLog=" + operationLog + "]";
	}
}
