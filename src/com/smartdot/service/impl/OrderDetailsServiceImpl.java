package com.smartdot.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.smartdot.dao.OrderDetailsDao;
import com.smartdot.entity.OrderDetails;
import com.smartdot.service.OrderDetailsService;

/**
 * ��������Serviceʵ����
 * @author Administrator
 *
 */
@Service("orderDetailsService")
public class OrderDetailsServiceImpl implements OrderDetailsService{

	@Resource
	private OrderDetailsDao orderDetailsDao;
	
	@Override
	public List<OrderDetails> find(Map<String, Object> map) {
		return orderDetailsDao.find(map);
	}

	@Override
	public Long getTotal(Map<String, Object> map) {
		return orderDetailsDao.getTotal(map);
	}

	@Override
	public float getTotalPriceByOrderId(Integer orderId) {
		return orderDetailsDao.getTotalPriceByOrderId(orderId);
	}

}
