package spring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
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
	public String jdbcDemo1() {
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
		} catch (Exception e) {
			return "Không có dữ liệu";
		}
	}

	@GetMapping(value = "jdbc/getAll", produces = "text/html; charset=UTF-8")
	public String jdbcDemo3(Model model) {
		String sql = "SELECT * FROM tintuc";
		try {
			List<TinTuc> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(TinTuc.class));
			model.addAttribute("list", list);
			return "demo";
		} catch (Exception e) {
			return "demo";
		}
	}

	@Transactional
	@GetMapping("jdbc2")
	@ResponseBody
	public String jdbc2() {
		String sql = "INSERT INTO danhmuctin(tenDanhMucTin) VALUES ('Danh muc tin')";
		jdbcTemplate.update(sql);
		sql = "INSERT INTO tintuc(tenTinTuc, moTa, hinhAnh, chiTiet, idDanhMucTin) VALUES ('Ten', 'Mo Ta', '', 'Chi Tiet', 1)";
		jdbcTemplate.update(sql);
		return "";
	}

}
