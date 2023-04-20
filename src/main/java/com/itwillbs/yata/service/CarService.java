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
	
	
	public List<CarVO> car_type(String car_type) {
		System.out.println("serviceCar_type");

		return mapper.car_type(car_type);
	}

}
