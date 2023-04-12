package com.itwillbs.yata.vo;

public class CarVO {
	private int car_id;
	private String car_manufacturer;
	private String car_model;
	private String car_name;
	private String car_type;
	private int car_year;
	private int car_price;
	private String car_available;
	private int car_seater;
	private String car_fuel;
	
	public CarVO() {}

	public CarVO(int car_id, String car_manufacturer, String car_model, String car_name, String car_type, int car_year,
			int car_price, String car_available, int car_seater, String car_fuel) {
		super();
		this.car_id = car_id;
		this.car_manufacturer = car_manufacturer;
		this.car_model = car_model;
		this.car_name = car_name;
		this.car_type = car_type;
		this.car_year = car_year;
		this.car_price = car_price;
		this.car_available = car_available;
		this.car_seater = car_seater;
		this.car_fuel = car_fuel;
	}

	public int getCar_id() {
		return car_id;
	}

	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}

	public String getCar_manufacturer() {
		return car_manufacturer;
	}

	public void setCar_manufacturer(String car_manufacturer) {
		this.car_manufacturer = car_manufacturer;
	}

	public String getCar_model() {
		return car_model;
	}

	public void setCar_model(String car_model) {
		this.car_model = car_model;
	}

	public String getCar_name() {
		return car_name;
	}

	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}

	public String getCar_type() {
		return car_type;
	}

	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}

	public int getCar_year() {
		return car_year;
	}

	public void setCar_year(int car_year) {
		this.car_year = car_year;
	}

	public int getCar_price() {
		return car_price;
	}

	public void setCar_price(int car_price) {
		this.car_price = car_price;
	}

	public String getCar_available() {
		return car_available;
	}

	public void setCar_available(String car_available) {
		this.car_available = car_available;
	}

	public int getCar_seater() {
		return car_seater;
	}

	public void setCar_seater(int car_seater) {
		this.car_seater = car_seater;
	}

	public String getCar_fuel() {
		return car_fuel;
	}

	public void setCar_fuel(String car_fuel) {
		this.car_fuel = car_fuel;
	}
	
	
	

	
	
}
