package com.itwillbs.yata.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.vo.CarVO;

public interface CarMapper {
	public List<CarVO> selectCars();
	public CarVO selectCar(int car_id);
//	car_model -> car_name 수정
	public List<CarVO> searchByName(@RequestParam String car_name);
}
