package mtp.datadog.domain;

public class MemberVO {

	private String name;
	private String phone;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "MemberVO [name=" + name + ", phone=" + phone + "]";
	}
	// getter setter ¸¸µé±â
	// alt + shift + s ,r
}
