package com.wmg.controller;

import com.wmg.model.GoodsInfo;
import com.wmg.service.impl.GoodsServiceImpl;
import com.wmg.model.GoodsInfo;
import com.wmg.service.impl.GoodsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class IndexController {
	@Autowired
	GoodsServiceImpl goodsServiceImpl;
    @RequestMapping("/index")
 	@ResponseBody
	public ModelAndView showGoodsUI(String Category, Integer TransactionState){
    	ModelAndView view=new ModelAndView("goodsUI");
    	TransactionState=1;//订单状态初始为1，可用 
    		/**
    		 * TransactionState=1;//订单状态初始为1，可用
    		 * Category="1";//书籍类
    		 * 查询书籍类数据
    		 */
       	Category="0";//书籍类
    	List<GoodsInfo> listBook=goodsServiceImpl.findGoodsInfo(TransactionState,Category);
    	view.addObject("listBook", listBook);

    	/**
		 * 查询户外运动类数据
		 */
       	Category="1";//户外运动
    	List<GoodsInfo> listSport=goodsServiceImpl.findGoodsInfo(TransactionState,Category);
    	view.addObject("listSport", listSport);
    	
    	/**
		 * 查询数码产品类数据
		 */
       	Category="2";//数码产品
    	List<GoodsInfo> listDigital=goodsServiceImpl.findGoodsInfo(TransactionState,Category);
    	view.addObject("listDigital", listDigital);

    	/**
		 * 查询男装女装类数据
		 */
       	Category="3";//男装女装
    	List<GoodsInfo> listClothing=goodsServiceImpl.findGoodsInfo(TransactionState,Category);
    	view.addObject("listClothing", listClothing);
    	
    	/**
		 * 查询美妆类数据
		 */
       	Category="4";//美妆
    	List<GoodsInfo> listMakeup=goodsServiceImpl.findGoodsInfo(TransactionState,Category);
    	view.addObject("listMakeup", listMakeup);
 
    	/**
		 * 查询其他数据
		 */
       	Category="5";//其他物品
    	List<GoodsInfo> listOther=goodsServiceImpl.findGoodsInfo(TransactionState,Category);
    	view.addObject("listOther", listOther);    	
    	
        return view;
    }
	@RequestMapping("/")
    public ModelAndView Index(){
		ModelAndView view=new ModelAndView("index");
		return view;
	}
}