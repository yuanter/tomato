package com.wmg.service;

import com.wmg.model.GoodsInfo;

import java.util.Date;
import java.util.List;

public interface GoodsService {
	/**
	 * 初始化查询一类数据
	 */
	public List<GoodsInfo> findGoodsInfo(Integer TransactionState, String Category);

	/**
	 * 通过交易信息ID查询一组交易信息
	 */
	public List<GoodsInfo> findAllGoodsByTransactionID(Long TransactionID);
	
	/**
	 * 通过交易信息ID查询一个交易信息
	 */
	public GoodsInfo findGoodsByTransactionID(Long TransactionID);
	
	/**
	 * 根据交易ID查找学号
	 */
	public String findStudentIdByTransactionID(Long TransactionID);

	/**
	 * 更新用户与交易信息关系表
	 */
	public Integer addUserAndGoodsInfo(Long TransactionID, String StudentID);
	/**
	 * 添加交易信息表
	 */
	public Integer addGoodsInfo(Long TransactionID, String Title, String Mode, String Category,
                                String Condition, String Price, String Describe, String Photo, Integer TransactionState, String Message,
                                Date CreateTime, Date TransactionTime, String TransactionAddress, Long TrafficVolume);
	

}
