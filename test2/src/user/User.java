package user;

public class User {
	public int getKey_num() {
		return key_num;
	}
	public void setKey_num(int key_num) {
		this.key_num = key_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_regi_num() {
		return user_regi_num;
	}
	public void setUser_regi_num(String user_regi_num) {
		this.user_regi_num = user_regi_num;
	}
	public String getDts_insert() {
		return dts_insert;
	}
	public void setDts_insert(String dts_insert) {
		this.dts_insert = dts_insert;
	}
	public String getDts_update() {
		return dts_update;
	}
	public void setDts_update(String dts_update) {
		this.dts_update = dts_update;
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
	
	private int key_num;
	private String user_id;
	private String user_pw;
	private String user_phone;
	private String user_regi_num;
	private String dts_insert;
	private String dts_update;
	private String dts_delete;
	private String yn_delete;
}
