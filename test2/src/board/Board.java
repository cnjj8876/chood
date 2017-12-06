package board;

public class Board {
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getNo_board() {
		return no_board;
	}
	public void setNo_board(String no_board) {
		this.no_board = no_board;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getId_insert() {
		return id_insert;
	}
	public void setId_insert(String id_insert) {
		this.id_insert = id_insert;
	}
	public String getDts_insert() {
		return dts_insert;
	}
	public void setDts_insert(String dts_insert) {
		this.dts_insert = dts_insert;
	}
	public String getId_update() {
		return id_update;
	}
	public void setId_update(String id_update) {
		this.id_update = id_update;
	}
	public String getDts_update() {
		return dts_update;
	}
	public void setDts_update(String dts_update) {
		this.dts_update = dts_update;
	}
	public String getId_delete() {
		return id_delete;
	}
	public void setId_delete(String id_delete) {
		this.id_delete = id_delete;
	}
	public String getDts_delete() {
		return dts_delete;
	}
	public void setDts_delete(String dts_delete) {
		this.dts_delete = dts_delete;
	}
	public String getYn_delete() {
		return yn_delete;
	}
	public void setYn_delete(String yn_delete) {
		this.yn_delete = yn_delete;
	}
	public String getDt_insert() {
		return dt_insert;
	}
	public void setDt_insert(String dt_insert) {
		this.dt_insert = dt_insert;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	private int no;
	private int cnt;
	private String no_board;//BOR/2017/1120/00001
	private String content;
	private String file_path;
	private String file_name;
	private String title;
	private String id_insert;
	private String dt_insert;
	private String dts_insert;
	private String id_update;
	private String dts_update;
	private String id_delete;
	private String dts_delete;
	private String yn_delete;
}
