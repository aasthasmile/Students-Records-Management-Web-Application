package student.csulb.edu.model;


public class Course {

	int cid ;
	String cNumber;
	String cName;
	String quarter;
	
	public Course() {
		super();
	}
	public Course(int cid, String cNumber, String cName, String quarter) {
		super();
		this.cid = cid;
		this.cNumber = cNumber;
		this.cName = cName;
		this.quarter = quarter;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getcNumber() {
		return cNumber;
	}
	public void setcNumber(String cNumber) {
		this.cNumber = cNumber;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getQuarter() {
		return quarter;
	}
	public void setQuarter(String quarter) {
		this.quarter = quarter;
	}

	@Override
	public String toString() {
		return "Course [cid=" + cid + ", cNumber=" + cNumber + ", cName=" + cName + ", quarter=" + quarter + "]";
	}
	
	
	
}
