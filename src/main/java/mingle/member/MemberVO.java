package mingle.member;

public class MemberVO {
	
	private String id, pwd, name;
	private int age;
	private String email, address, phone, grade;
	
	public MemberVO() {}

	public MemberVO(String id, String pwd, String name, int age, String email, String address, String phone,
			String grade) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.age = age;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.grade = grade;
	}
	
	
	//로그인용 생성자
	public MemberVO(String id, String pwd, String grade) {
		this.id = id;
		this.pwd = pwd;   
		this.grade = grade;
	}

	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	public String getPwd() {return pwd;}
	public void setPwd(String pwd) {this.pwd = pwd;}
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	public int getAge() {return age;}
	public void setAge(int age) {this.age = age;}
	public String getEmail() {return email;}
	public void setEmail(String email) {this.email = email;}
	public String getAddress() {return address;}
	public void setAddress(String address) {this.address = address;}
	public String getPhone() {return phone;}
	public void setPhone(String phone) {this.phone = phone;}
	public String getGrade() {return grade;}
	public void setGrade(String grade) {this.grade = grade;}

	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", age=" + age + ", email=" + email
				+ ", address=" + address + ", phone=" + phone + ", grade=" + grade + "]";
	}
	
	
	
}
