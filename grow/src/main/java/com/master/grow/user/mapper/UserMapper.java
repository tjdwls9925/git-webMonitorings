package com.master.grow.user.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {

	public int InsertNewUser(@Param("userId") String userId, @Param("userName") String userName,@Param("userEmail") String userEmail, @Param("userPw")String userPw, @Param("userRePw")String userRePw);

	public int SelectNewInsertUserIdCheck(@Param("userId")String userId);

	public int userLoginEvent(@Param("userId") String userId, @Param("userPw") String userPw);

	public int newInsertUser(@Param("userCode") String userCode, @Param("userID") String userID, @Param("userName") String userName,@Param("userEmail") String userEmail, @Param("userPassword") String userPassword,
			@Param("userPhone") String userPhone, @Param("userGender") String userGender, @Param("userBirth") String userBirth);


}
