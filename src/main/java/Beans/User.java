package Beans;

public class User {
	String userName;
	String pw;
	String fullName;
	String urlAvt;
	String email;
	String sdt;
	String gender;
	Date dateOfBirth;
	public User(String userName, String pw) {
		super();
		this.userName = userName;
		this.pw = pw;
	}

	public User(String userName, String pw, String fullName, String urlAvt, String email, String sdt, String gender,
			Date dateOfBirth) {
		super();
		this.userName = userName;
		this.pw = pw;
		this.fullName = fullName;
		this.urlAvt = urlAvt;
		this.email = email;
		this.sdt = sdt;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
	}
	
	public void setFullName(String name) {
		this.fullName=name;
	}
	public String getFullName() {
		return this.fullName==null ?" " : fullName.trim();
	}
	
	public String getUrlAvt() {
		return urlAvt;
	}

	public void setUrlAvt(String urlAvt) {
		this.urlAvt = urlAvt;
	}

	public String getUserName() {
		return userName.trim();
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getEmail() {
		return this.email==null ?" " : this.email.trim();
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return this.sdt==null ?" " : this.sdt.trim();
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getGender() {
		return this.gender==null ?" " : this.gender.trim();
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	
}
