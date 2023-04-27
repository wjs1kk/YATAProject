package com.itwillbs.yata.mapper;

import java.util.List;
import java.util.Map;


import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.CarVO;

public interface CarMapper {
	List<CarVO> selectCars();
	CarVO selectCar(int car_id);
//	car_model -> car_name 수정

	public List<CarVO> searchByName(String car_name);
	public List<CarVO> car_type(String car_type);

//	admin
	public int adminCarRegist(CarVO car);
	int carUpdate(CarVO car);
	int deleteCar(int car_id);
	public List<CarVO> selectCarShippedList();
	public int selectCarListCount(@Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
	public int deleteCarModel(@Param("car_id") int car_id);
	public List<CarVO> selectCarList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
}
