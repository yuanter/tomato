package com.wmg.dao;

import com.wmg.model.GoodsInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

@Mapper
public interface GoodsDao {
	/**
	 * 通过交易信息ID查询交易信息
	 */
	public List<GoodsInfo> findAllGoodsByTransactionID(@Param("TransactionID") Long TransactionID);

	/**
	 * 通过交易信息ID查询一个交易信息
	 */
	public GoodsInfo findGoodsByTransactionID(@Param("TransactionID") Long TransactionID);

	/**
	 * 初始化查询一类数据
	 */
	public List<GoodsInfo> findGoodsInfo(@Param("TransactionState") Integer TransactionState, @Param("Category") String Category);

	/**
	 * 根据交易ID查找学号
	 */
	public String findStudentIdByTransactionID(@Param("TransactionID") Long TransactionID);

	/**
	 * 更新用户与交易信息关系表
	 */
	public Integer addUserAndGoodsInfo(@Param("TransactionID") Long TransactionID, @Param("StudentID") String StudentID);

	/**
	 * 添加交易信息表
	 */
	public Integer addGoodsInfo(@Param("TransactionID") Long TransactionID, @Param("Title") String Title, @Param("Mode") String Mode, @Param("Category") String Category,
                                @Param("Condition") String Condition, @Param("Price") String Price, @Param("Describe") String Describe, @Param("Photo") String Photo, @Param("TransactionState") Integer TransactionState, @Param("Message") String Message,
                                @Param("CreateTime") Date CreateTime, @Param("TransactionTime") Date TransactionTime, @Param("TransactionAddress") String TransactionAddress, @Param("TrafficVolume") Long TrafficVolume);
	
	

}
