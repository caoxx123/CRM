package com.smartdot.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.smartdot.dao.CustomerLossDao;
import com.smartdot.entity.CustomerLoss;
import com.smartdot.service.CustomerLossService;

/**
 * �ͻ���ʧServiceʵ����
 * @author Administrator
 *
 */
@Service("customerLossService")
public class CustomerLossServiceImpl implements CustomerLossService{

	@Resource
	private CustomerLossDao customerLossDao;
	
	@Override
	public List<CustomerLoss> find(Map<String, Object> map) {
		return customerLossDao.find(map);
	}

	@Override
	public Long getTotal(Map<String, Object> map) {
		return customerLossDao.getTotal(map);
	}

	@Override
	public CustomerLoss findById(Integer id) {
		return customerLossDao.findById(id);
	}

	@Override
	public int update(CustomerLoss customerLoss) {
		return customerLossDao.update(customerLoss);
	}

}
