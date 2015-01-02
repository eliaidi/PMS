package bean;

/**
 * 订单Bean
 * @author 廖陈特
 *
 */
public class Order extends BaseOrder {
	
	private int sonOrderId;
	
	private String user_name;
	
	private String shipping_method_name;
	
	private String status_name;
	
	private int num;
	
	private double price;
	
	private int product_color_id;
	
	private String product_color_name;

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getShipping_method_name() {
		return shipping_method_name;
	}

	public void setShipping_method_name(String shipping_method_name) {
		this.shipping_method_name = shipping_method_name;
	}

	public String getStatus_name() {
		return status_name;
	}

	public void setStatus_name(String status_name) {
		this.status_name = status_name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getProduct_color_id() {
		return product_color_id;
	}

	public void setProduct_color_id(int product_color_id) {
		this.product_color_id = product_color_id;
	}

	public String getProduct_color_name() {
		return product_color_name;
	}

	public void setProduct_color_name(String product_color_name) {
		this.product_color_name = product_color_name;
	}

	public int getSonOrderId() {
		return sonOrderId;
	}

	public void setSonOrderId(int sonOrderId) {
		this.sonOrderId = sonOrderId;
	}
	
}
