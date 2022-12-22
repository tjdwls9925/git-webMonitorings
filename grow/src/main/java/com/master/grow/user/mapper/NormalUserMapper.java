package com.master.grow.user.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.master.grow.user.to.UserTO;

@Mapper
public interface NormalUserMapper {

	public int SelectNewInsertUserIdCheck(@Param("userID") String userID);

	public int newInsertUser(@Param("userID") String userID, @Param("userName") String userName,@Param("userEmail") String userEmail, @Param("userPassword") String userPassword,
			@Param("userPhone") String userPhone, @Param("userGender") String userGender, @Param("userBirth") String userBirth);

	public int userLoginEvent(@Param ("userId") String userId,@Param("userPw") String userPw);

	public UserTO getSelectedUser(@Param("userID")String user);

	public int getFarmCode(@Param("farmCode") String code);

	public int userFarmCodeUpdate(@Param("userID") String userID, @Param("code") String code);

}
