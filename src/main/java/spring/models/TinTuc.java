package spring.models;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TinTuc {

	private int idTinTuc;
	private String tenTinTuc;
	private String moTa;
	private String hinhAnh;
	private String chiTiet;
	private Timestamp ngayDang;
	private int idDanhMucTin;

	public TinTuc(String tenTinTuc, String moTa, String hinhAnh, String chiTiet, int idDanhMucTin) {
		super();
		this.tenTinTuc = tenTinTuc;
		this.moTa = moTa;
		this.hinhAnh = hinhAnh;
		this.chiTiet = chiTiet;
		this.idDanhMucTin = idDanhMucTin;
	}

}
