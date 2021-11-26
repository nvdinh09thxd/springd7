package spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.daos.TinTucDAO;
import spring.models.TinTuc;

@Service
public class TinTucService {

	@Autowired
	private TinTucDAO tinTucDAO;

	public List<TinTuc> findAll() {
		List<TinTuc> list = tinTucDAO.findAll();
		return list;
	}

	public List<TinTuc> findByCatId(int catId) {
		List<TinTuc> list = tinTucDAO.findByCatId(catId);
		return list;
	}

	public TinTuc findById(int id) {
		TinTuc tinTuc = tinTucDAO.findById(id);
		return tinTuc;
	}
	
	public int insertOneRecord(TinTuc news) {
		int results = tinTucDAO.insertOneRecord(news);
		return results;
	}

}
