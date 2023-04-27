package com.itwillbs.yata.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.yata.mapper.CarMapper;
import com.itwillbs.yata.vo.CarVO;

@Service
public class CarService {
	@Autowired
	private CarMapper mapper;
	
	public List<CarVO> selectCars() {	
		return mapper.selectCars() != null ? mapper.selectCars() :null ;
	}
	public CarVO selectCar(int car_id) {
		return mapper.selectCar(car_id) != null ? mapper.selectCar(car_id) :null ;
	}
	//car_model -> car_name 수정
	public List<CarVO> searchByName(String car_name) {
		System.out.println("searchByName");
		return mapper.searchByName(car_name);
	}

	public int adminCarRegist(CarVO car) {
		return mapper.adminCarRegist(car);
	}
	public int carUpdate(CarVO car) {
		return mapper.carUpdate(car);
	}
	public int deleteCar(int car_id) {
		return mapper.deleteCar(car_id);
	}
	public List<CarVO> car_type(String car_type) {

		return mapper.car_type(car_type);
	}
	
	//출고된 차량 리스트 - 2023-04-27 김동욱 페이징 처리
	public List getCarShippedList(int startRow, int listLimit, String searchType, String searchKeyword) {
		return mapper.selectCarShippedList(startRow, listLimit, searchType, searchKeyword);
	}
	public int getCarListCount(String searchType, String searchKeyword) {
		return mapper.selectCarListCount(searchType, searchKeyword);
	}

	public int removeCarModel(int car_id) {
		return mapper.deleteCarModel(car_id);
	}
	
	public List<CarVO> getCarList(int startRow, int listLimit, String searchType, String searchKeyword) {	
		return mapper.selectCarList(startRow, listLimit, searchType, searchKeyword);
	}
	public int getgetCarShippedListCount(String searchType, String searchKeyword) {
		return 0;
	}
	// 출고된 차량 리스트 페이징 처리를 위한 카운트 - 2023-04-27 김동욱
	public int getCarShippedListCount(String searchType, String searchKeyword) {
		return mapper.selectCarShippedListCount(searchType, searchKeyword);
	}

}
