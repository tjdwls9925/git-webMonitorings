package com.master.grow.user.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface NormalUserMapper {

	public int SelectNewInsertUserIdCheck(@Param("userID") String userID);

	public int newInsertUser(@Param("userID") String userID, @Param("userName") String userName,@Param("userEmail") String userEmail, @Param("userPassword") String userPassword,
			@Param("userPhone") String userPhone, @Param("userGender") String userGender, @Param("userBirth") String userBirth);

}
