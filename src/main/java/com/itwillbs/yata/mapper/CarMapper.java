package com.itwillbs.yata.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.CarVO;

public interface CarMapper {
	public List<CarVO> selectCars();
	public CarVO selectCar(int car_id);
//	car_model -> car_name 수정
	public List<CarVO> searchByName(String car_name);
	
	
	
//	카테고리
	public List<CarVO> car_type(String car_type);
}
