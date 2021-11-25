package spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.models.TinTuc;

@Controller
public class JDBCController {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@GetMapping(value = "jdbc", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String jdbcDemo() {
		String sql = "SELECT * FROM tintuc WHERE idTinTuc = 1";
		TinTuc tinTuc = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(TinTuc.class));

		return tinTuc.toString();
	}

	@GetMapping(value = "jdbc/{id}", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String jdbcDemo2(@PathVariable int id) {
		String sql = "SELECT * FROM tintuc WHERE idTinTuc = ?";
		try {
			TinTuc tinTuc = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(TinTuc.class), id);
			return tinTuc.toString();
		} catch (EmptyResultDataAccessException e) {
			return "Không có dữ liệu";
		}
	}

}
