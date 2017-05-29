package student.csulb.edu.model;


public class Student {

	int sid;
	String firstname;
	String lastname;
	int age;
	String gender;

	public Student() {
		super();
	}

	public Student(int sid) {
		super();
		this.sid = sid;
	}

	public Student(int sid, String firstname, String lastname, int age, String gender) {
		super();
		this.sid = sid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.gender = gender;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "Student [sid=" + sid + ", firstname=" + firstname + ", lastname=" + lastname + ", age=" + age
				+ ", gender=" + gender + "]";
	}
	

}
