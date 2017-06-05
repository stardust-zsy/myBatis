package test.model;

public class Product {

	private int productId;
	private String productNm;
	private String dayFrom;
	private String dayEnd;
	private String price;
	private String customer;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductNm() {
		return productNm;
	}

	public void setProductNm(String productNm) {
		this.productNm = productNm;
	}

	public String getDayfrom() {
		return dayFrom;
	}

	public void setDayfrom(String dayFrom) {
		this.dayFrom = dayFrom;
	}

	public String getDayEnd() {
		return dayEnd;
	}

	public void setDayEnd(String dayEnd) {
		this.dayEnd = dayEnd;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}

}
