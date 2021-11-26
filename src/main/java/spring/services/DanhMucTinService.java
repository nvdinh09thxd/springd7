package spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.daos.DanhMucTinDAO;
import spring.models.DanhMucTin;

@Service
public class DanhMucTinService {

	@Autowired
	private DanhMucTinDAO danhMucTinDAO;

	public List<DanhMucTin> findAll() {
		List<DanhMucTin> list = danhMucTinDAO.findAll();
		return list;
	}
	
	public DanhMucTin findById(int id) {
		DanhMucTin danhMucTin = danhMucTinDAO.findById(id);
		return danhMucTin;
	}

}
