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
	public List<CarVO> car_type(String car_type);

//	admin
	public int adminCarRegist(CarVO car);
	int carUpdate(CarVO car);
	int deleteCar(int car_id);
	public List<CarVO> selectCarShippedList();
	public int selectCarListCount(@Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
	public int deleteCarModel(@Param("car_id") int car_id);
	public List<CarVO> selectCarList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
	public List selectCarShippedList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
	// 출고된 차량 목록 페이징 처리를 위한 카운트 - 2023-04-27 김동욱
	public int selectCarShippedListCount(@Param("searchType")String searchType, @Param("searchKeyword")String searchKeyword);
	// 2023-04-28 김동욱 - 출고된 차량 반납 확인
	public int updateCarReturnCheck(String car_id);
}
