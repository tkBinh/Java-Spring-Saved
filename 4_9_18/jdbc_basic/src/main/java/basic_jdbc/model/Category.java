package basic_jdbc.model;

public class Category {
	
	private Integer categoryId;
	private String categoryName;
	private String country;
	
	public Category() {
		// TODO Auto-generated constructor stub
	}
	public Category(Integer categoryId,String categoryName,String country) {
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.country = country;
	}
	
	public Integer getCategoryId() {
		return categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public String getCountry() {
		return country;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
}
