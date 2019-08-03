package com.wmg.service.impl;

import com.wmg.dao.GoodsDao;
import com.wmg.model.GoodsInfo;
import com.wmg.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService{
	@Autowired
    private GoodsDao goodsDao;
	@Override
	public List<GoodsInfo> findGoodsInfo(Integer TransactionState, String Category) {
		// TODO Auto-generated method stub
		return goodsDao.findGoodsInfo(TransactionState, Category);
	}
	@Override
	public GoodsInfo findGoodsByTransactionID(Long TransactionID) {
		// TODO Auto-generated method stub
		return goodsDao.findGoodsByTransactionID(TransactionID);
	}
	@Override
	public List<GoodsInfo> findAllGoodsByTransactionID(Long TransactionID) {
		// TODO Auto-generated method stub
		return goodsDao.findAllGoodsByTransactionID(TransactionID);
	}
	@Override
	public String findStudentIdByTransactionID(Long TransactionID) {
		// TODO Auto-generated method stub
		return goodsDao.findStudentIdByTransactionID(TransactionID);
	}
	@Override
	public Integer addUserAndGoodsInfo(Long TransactionID, String StudentID) {
		// TODO Auto-generated method stub
		return goodsDao.addUserAndGoodsInfo(TransactionID, StudentID);
	}
	@Override
	public Integer addGoodsInfo(Long TransactionID, String Title, String Mode, String Category, String Condition,
			String Price, String Describe, String Photo, Integer TransactionState, String Message, Date CreateTime,
			Date TransactionTime, String TransactionAddress, Long TrafficVolume) {
		// TODO Auto-generated method stub
		return goodsDao.addGoodsInfo(TransactionID, Title, Mode, Category, Condition, Price, Describe, Photo, TransactionState, Message, CreateTime, TransactionTime, TransactionAddress, TrafficVolume);
	}


}
