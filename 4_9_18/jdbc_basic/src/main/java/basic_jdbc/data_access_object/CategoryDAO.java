package basic_jdbc.data_access_object;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import basic_jdbc.mapper.CategoryMapper;
import basic_jdbc.model.Category;

@Repository
@Transactional
public class CategoryDAO extends JdbcDaoSupport {
	@Autowired
	public CategoryDAO(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	public List<Category> listCategory() {
		String sql = CategoryMapper.BASE_SQL;

		Object[] params = new Object[] {};
		CategoryMapper mapper = new CategoryMapper();

		List<Category> list = this.getJdbcTemplate().query(sql, params, mapper);
		return list;
	}

	public void insertCategory(String categoryName, String country) {
		String sql = "Insert into Category values (?,?,?)";
		Object[] params = new Object[] { categoryName, country };
		this.getJdbcTemplate().update(sql, params);
	}
}
