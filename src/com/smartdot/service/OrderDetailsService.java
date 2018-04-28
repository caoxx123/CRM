package com.smartdot.service;

import java.util.List;
import java.util.Map;

import com.smartdot.entity.OrderDetails;

/**
 * ������ϸService�ӿ�
 * @author Administrator
 *
 */
public interface OrderDetailsService {

	
	/**
	 * ��ѯ������ϸ����
	 * @param map
	 * @return
	 */
	public List<OrderDetails> find(Map<String,Object> map);
	
	
	/**
	 * ��ȡ�ܼ�¼��
	 * @param map
	 * @return
	 */
	public Long getTotal(Map<String,Object> map);
	
	/**
	 * ��ȡָ���������ܽ��
	 * @param orderId
	 * @return
	 */
	public float getTotalPriceByOrderId(Integer orderId);
	
	
	
}