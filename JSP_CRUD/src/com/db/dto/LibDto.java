// 프로그램 파일명: LibDto.java, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: 필요한 변수, 생성자들, Getter/Setter 생성


package com.db.dto;

public class LibDto {

	// 사용 변수들
	private String lib_index;
	private String lib_name;
	private String lib_code;
	private String ad_name;
	private String address;
	private String phone;
	private String url;
	private String lib_time;
	private String holiday;
	private String devision;
	private String dev_name;
	private String lat;
	private String longitude;
	
	
	// 기본 생성자
	public LibDto() {
		super();
	}

	
	// 생성자
	public LibDto(String lib_index, String lib_name, String lib_code, String ad_name, String address, String phone,
			String url, String lib_time, String holiday, String devision, String dev_name, String lat,
			String longitude) {
		super();
		this.lib_index = lib_index;
		this.lib_name = lib_name;
		this.lib_code = lib_code;
		this.ad_name = ad_name;
		this.address = address;
		this.phone = phone;
		this.url = url;
		this.lib_time = lib_time;
		this.holiday = holiday;
		this.devision = devision;
		this.dev_name = dev_name;
		this.lat = lat;
		this.longitude = longitude;
	}

	
	// update 실행 시 필요한 생성자 부분
	public LibDto(String lib_index, String lib_name, String lib_code) {
		super();
		this.lib_index = lib_index;
		this.lib_name = lib_name;
		this.lib_code = lib_code;
	}


	// Getter/Setter
	public String getLib_index() {
		return lib_index;
	}


	public void setLib_index(String lib_index) {
		this.lib_index = lib_index;
	}


	public String getLib_name() {
		return lib_name;
	}


	public void setLib_name(String lib_name) {
		this.lib_name = lib_name;
	}


	public String getLib_code() {
		return lib_code;
	}


	public void setLib_code(String lib_code) {
		this.lib_code = lib_code;
	}


	public String getAd_name() {
		return ad_name;
	}


	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public String getLib_time() {
		return lib_time;
	}


	public void setLib_time(String lib_time) {
		this.lib_time = lib_time;
	}


	public String getHoliday() {
		return holiday;
	}


	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}


	public String getDevision() {
		return devision;
	}


	public void setDevision(String devision) {
		this.devision = devision;
	}


	public String getDev_name() {
		return dev_name;
	}


	public void setDev_name(String dev_name) {
		this.dev_name = dev_name;
	}


	public String getLat() {
		return lat;
	}


	public void setLat(String lat) {
		this.lat = lat;
	}


	public String getLongitude() {
		return longitude;
	}


	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}


	
	// toString()
	@Override
	public String toString() {
		return "LibDto [lib_index=" + lib_index + ", lib_name=" + lib_name + ", lib_code=" + lib_code + ", ad_name="
				+ ad_name + ", address=" + address + ", phone=" + phone + ", url=" + url + ", lib_time=" + lib_time
				+ ", holiday=" + holiday + ", devision=" + devision + ", dev_name=" + dev_name + ", lat=" + lat
				+ ", longitude=" + longitude + "]";
	}
	
	
	
	
	
	
	
	
}
