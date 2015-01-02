package bean;

import java.util.Date;

public class BaseProduct {
	protected int id;

	protected String name;

	protected String size;

	protected double price;

	protected String watt;

	protected int onhand;

	protected String weight;

	protected String other_param;

	protected int brand_id;

	protected int class_id;

	protected String color_id;

	protected String image;

	protected String area;

	protected String manufacturer;

	protected double discount;

	protected String discription;

	protected int user_id;

	protected String identification_code;

	protected Date modification_date;
	
	protected String tempId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getWatt() {
		return watt;
	}

	public void setWatt(String watt) {
		this.watt = watt;
	}

	public int getOnhand() {
		return onhand;
	}

	public void setOnhand(int onhand) {
		this.onhand = onhand;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getOther_param() {
		return other_param;
	}

	public void setOther_param(String other_param) {
		this.other_param = other_param;
	}

	public int getBrand_id() {
		return brand_id;
	}

	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public String getColor_id() {
		return color_id;
	}

	public void setColor_id(String color_id) {
		this.color_id = color_id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getIdentification_code() {
		return identification_code;
	}

	public void setIdentification_code(String identification_code) {
		this.identification_code = identification_code;
	}

	public Date getModification_date() {
		return modification_date;
	}

	public void setModification_date(Date modification_date) {
		this.modification_date = modification_date;
	}

	public String getTempId() {
		return tempId;
	}

	public void setTempId(String tempId) {
		this.tempId = tempId;
	}
}
