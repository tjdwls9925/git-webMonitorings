package com.master.grow.user.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface NormalUserMapper {

	public int SelectNewInsertUserIdCheck(@Param("userID") String userID);

}
