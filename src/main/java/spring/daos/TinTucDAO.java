package spring.daos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import spring.models.TinTuc;

@Repository
public class TinTucDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<TinTuc> findAll() {
		String sql = "SELECT * FROM  tintuc";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(TinTuc.class));
	}

	public List<TinTuc> findByCatId(int catId) {
		String sql = "SELECT * FROM  tintuc WHERE idDanhMucTin = ?";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(TinTuc.class), catId);
	}

	public TinTuc findById(int id) {
		String sql = "SELECT * FROM  tintuc WHERE idTinTuc = ?";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(TinTuc.class), id);
	}

	public int insertOneRecord(TinTuc tinTuc) {
		String sql = "INSERT INTO tintuc(tenTinTuc, moTa, hinhAnh, chiTiet, idDanhMucTin) VALUES (?, ?, ?, ?, ?)";
		return jdbcTemplate.update(sql, new Object[] { tinTuc.getTenTinTuc(), tinTuc.getMoTa(), tinTuc.getHinhAnh(),
				tinTuc.getChiTiet(), tinTuc.getIdDanhMucTin() });
	}

}
