package com.mlg.easylife.base.mapper;

import com.mlg.easylife.base.domain.Logininfo;
import org.apache.ibatis.annotations.Param;

public interface LogininfoMapper {

    int insert(Logininfo record);

    Logininfo selectByPrimaryKey(Long id);

    int updateByPrimaryKey(Logininfo record);

    /**
     * 根据名字来查询数据库是否存在
     * @param username
     * @return
     */
	int countUserByName(String username);

	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 */
	Logininfo login(@Param("username") String username, @Param("password") String password, @Param("userType") int userType);
	
	 /**
     * 按照用户类型统计
     * @param userManager
     * @return
     */
	int countByUserType(int userManager);

	/**
	 * 更改头像信息
	 * @param headImages
	 * @param id
     */
    int updateImagesByPrimaryKey(@Param("headImages")String headImages, @Param("id")Long id);

	Logininfo selectByRealName(String username);
}