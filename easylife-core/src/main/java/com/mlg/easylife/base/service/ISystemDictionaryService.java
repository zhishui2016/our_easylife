package com.mlg.easylife.base.service;

import com.mlg.easylife.base.domain.SystemDictionary;
import com.mlg.easylife.base.domain.SystemDictionaryItem;
import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.base.query.SystemDictionaryQueryObject;

import java.util.List;


/**
 * 数据字典服务
 * 
 * @author 黄振强
 * 
 */
public interface ISystemDictionaryService {

	/**
	 * 数据字典分类分页服务
	 * 
	 * @param qo
	 * @return
	 */
	PageResult queryDics(SystemDictionaryQueryObject qo);

	/**
	 * 数据字典的保存或者更新
	 * 
	 * @param sd
	 */
	void saveOrUpdate(SystemDictionary sd);
	
	/**
	 * 数据字典明细查询
	 * @param qo
	 * @return
	 */
	PageResult queryItem(SystemDictionaryQueryObject qo);
	/**
	 * 添加或修改数据字典明细
	 * @param item
	 */
	void saveOrUpdateItem(SystemDictionaryItem item);
	/**
	 * 查询所有的数据字典的分类
	 * @return
	 */
	List<SystemDictionary> listDics();

	List<SystemDictionaryItem> queryByParentSn(String sn);

	List<SystemDictionaryItem> loadBySn(String string);
}
