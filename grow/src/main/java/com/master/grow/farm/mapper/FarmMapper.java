package com.master.grow.farm.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface FarmMapper {

	public int CodeCheckEvent(@Param("farmCode") String farmCode);

}
