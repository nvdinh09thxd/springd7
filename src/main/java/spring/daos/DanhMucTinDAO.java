package spring.daos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.models.DanhMucTin;

@Repository
public class DanhMucTinDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<DanhMucTin> findAll() {
		String sql = "SELECT * FROM  danhmuctin";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(DanhMucTin.class));
	}

	public DanhMucTin findById(int id) {
		String sql = "SELECT * FROM  danhmuctin WHERE idDanhMucTin = ?";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(DanhMucTin.class), id);
	}
}
