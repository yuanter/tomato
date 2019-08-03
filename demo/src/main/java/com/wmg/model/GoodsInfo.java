package com.wmg.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data//lombok插件，实现所有的getting和setting方法
public class GoodsInfo {
 	private Long TransactionID;//交易信息ID
    private String Title;//标题
    private String Mode;//交易方式
    private String Category;//物品类别
    private String Condition;//物品成色
    private String Price;//物品价格
    private String Describe;//物品描述
    private String Photo;//物品照片
    private Integer TransactionState;//交易状态
    private String Message;//用户留言
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(
    	    pattern = "yyyy-MM-dd HH:mm:ss",
    	    timezone = "GMT+8"//jackson在序列化时间时是按照国际标准时间GMT进行格式化的，而在国内默认时区使用的是CST时区，两者相差8小时。
    	)
    private Date CreateTime;//创建交易信息时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(
    	    pattern = "yyyy-MM-dd HH:mm:ss",
    	    timezone = "GMT+8"//jackson在序列化时间时是按照国际标准时间GMT进行格式化的，而在国内默认时区使用的是CST时区，两者相差8小时。
    	) 
    private Date TransactionTime;//交易时间
    private String TransactionAddress;//交易地点
    private Long TrafficVolume;//人气，即点击量

	@Override
	public String toString() {
		return "GoodsInfo [TransactionID=" + TransactionID + ", Title=" + Title + ", Mode=" + Mode + ", Category="
				+ Category + ", Condition=" + Condition + ", Price=" + Price + ", Describe=" + Describe + ", Photo="
				+ Photo + ", TransactionState=" + TransactionState + ", Message=" + Message + ", CreateTime="
				+ CreateTime + ", TransactionTime=" + TransactionTime + ", TransactionAddress=" + TransactionAddress
				+ ", TrafficVolume=" + TrafficVolume + "]";
	}
}
