package com.mlg.easylife.base.mapper;


import com.mlg.easylife.base.domain.Iplog;
import com.mlg.easylife.base.query.IplogQueryObject;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface IplogMapper {

	/**
	 * 保存日志
	 * @param record
	 * @return
	 */
    int insert(Iplog record);
    /**
     * 总条数
     * @param qo
     * @return
     */
    int queryForCount(IplogQueryObject qo);
    /**
     * 总页数
     * @param qo
     * @return
     */
    List<Iplog>query(IplogQueryObject qo);
    /**
     * 查询所有的登录时间
     * @return
     */
    Date getLastLogintime(String username);

    List<Iplog> selectLogByUserid(@Param("username") String username, @Param("offset") int offset, @Param("limit") int limit);

    Iplog selectCountByUserid(@Param("username") String username);

}