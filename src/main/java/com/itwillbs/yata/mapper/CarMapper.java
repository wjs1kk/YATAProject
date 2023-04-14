package com.itwillbs.yata.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.vo.CarVO;

public interface CarMapper {
	List<CarVO> selectCars();
	CarVO selectCar(int car_id);
//	car_model -> car_name 수정
	List<CarVO> searchByName(@RequestParam String car_name);
	
	List<CarVO> carList(CarVO car);
	
	int adminCarRegist(CarVO car);
	
	int carUpdate(CarVO car);
	
	CarVO carInfo(@RequestParam String car_id);
	
}
