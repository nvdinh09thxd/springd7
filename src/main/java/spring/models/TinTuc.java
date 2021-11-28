package spring.models;

import java.sql.Timestamp;

import javax.validation.constraints.NotEmpty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TinTuc {

	private int idTinTuc;

	@NotEmpty(message = "Vui lòng nhập tên tin tức!")
	private String tenTinTuc;

	@NotEmpty(message = "Vui lòng nhập mô tả!")
	private String moTa;

	private String hinhAnh;

	@NotEmpty(message = "Vui lòng nhập chi tiết!")
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
