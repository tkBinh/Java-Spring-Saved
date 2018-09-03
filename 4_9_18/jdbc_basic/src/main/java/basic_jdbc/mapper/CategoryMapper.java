package basic_jdbc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import basic_jdbc.model.Category;

public class CategoryMapper implements RowMapper<Category>{
	public static final String BASE_SQL = "SELECT * FROM categories";

	public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
		Integer categoryId = rs.getInt(1);
		String categoryName = rs.getString(2);
		String country = rs.getString(3);
		return new Category(categoryId,categoryName,country);
	}
}
