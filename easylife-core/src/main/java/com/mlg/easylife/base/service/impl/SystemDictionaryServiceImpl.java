package com.mlg.easylife.base.service.impl;

import com.mlg.easylife.base.domain.SystemDictionary;
import com.mlg.easylife.base.domain.SystemDictionaryItem;
import com.mlg.easylife.base.mapper.SystemDictionaryItemMapper;
import com.mlg.easylife.base.mapper.SystemDictionaryMapper;
import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.base.query.SystemDictionaryQueryObject;
import com.mlg.easylife.base.service.ISystemDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SystemDictionaryServiceImpl implements ISystemDictionaryService {
	@Autowired
	private SystemDictionaryMapper systemDictionaryMapper;
	@Autowired
	private SystemDictionaryItemMapper systemDictionaryItemMapper;

	@Override
	public PageResult queryDics(SystemDictionaryQueryObject qo) {
		// 总条数
		int count = systemDictionaryMapper.queryForCount(qo);
		if (count > 0) {
			List<SystemDictionary> list = systemDictionaryMapper.query(qo);
			return new PageResult(count, list, qo.getCurrentPage(),
					qo.getPageSize());
		}
		return PageResult.empty(qo.getPageSize());
	}

	@Override
	public void saveOrUpdate(SystemDictionary sd) {
		// 通过该数据分类的id判断是更新还是保存
		if (sd.getId() != null) {
			systemDictionaryMapper.updateByPrimaryKey(sd);
		} else {
			systemDictionaryMapper.insert(sd);
		}
	}

	@Override
	public PageResult queryItem(SystemDictionaryQueryObject qo) {
		// 总条数
		int count = systemDictionaryItemMapper.queryForCount(qo);
		if (count > 0) {
			List<SystemDictionaryItem> list = systemDictionaryItemMapper
					.query(qo);
			return new PageResult(count, list, qo.getCurrentPage(),
					qo.getPageSize());
		}
		return PageResult.empty(qo.getPageSize());
	}

	@Override
	public void saveOrUpdateItem(SystemDictionaryItem item) {
		// 通过该数据分类的id判断是更新还是保存
		if (item.getId() != null) {
			systemDictionaryItemMapper.updateByPrimaryKey(item);
		} else {
			systemDictionaryItemMapper.insert(item);
		}

	}

	@Override
	public List<SystemDictionary> listDics() {
		return systemDictionaryMapper.selectAll();
	}

	@Override
	public List<SystemDictionaryItem> queryByParentSn(String sn) {
		return systemDictionaryItemMapper.selectByParentSn(sn);
	}

	@Override
	public List<SystemDictionaryItem> loadBySn(String sn) {
		return systemDictionaryItemMapper.selectByParentSn(sn);
	}

}
