package com.smartdot.dao;

import java.util.List;
import java.util.Map;

import com.smartdot.entity.Product;

/**
 * ��ƷDao�ӿ�
 * @author Administrator
 *
 */
public interface ProductDao {

	
	/**
	 * ��ѯ��Ʒ����
	 * @param map
	 * @return
	 */
	public List<Product> find(Map<String,Object> map);
	
	/**
	 * ��ȡ�ܼ�¼��
	 * @param map
	 * @return
	 */
	public Long getTotal(Map<String,Object> map);

}
