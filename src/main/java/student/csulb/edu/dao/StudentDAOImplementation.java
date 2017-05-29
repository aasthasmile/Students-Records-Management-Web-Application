package student.csulb.edu.dao;


import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import student.csulb.edu.model.Course;
import student.csulb.edu.model.Student;
import student.csulb.edu.util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StudentDAOImplementation implements StudentDAO {


	private Connection conn;

	public StudentDAOImplementation() {
		//System.out.println("Student Dao constructor");
		conn = DBUtil.SetDBConnection();
	}

	@Override
	public void addStudent(Student student) {
		try {
			String query = "Insert into student(firstname,lastname,age,gender) values(?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, student.getFirstname());
			pstmt.setString(2, student.getLastname());
			pstmt.setInt(3, student.getAge());
			pstmt.setString(4, student.getGender());

			System.out.println("Insert into student(firstname,lastname,age,gender) values(" + student.getFirstname()
					+ "," + student.getLastname() + "," + student.getAge() + "," + student.getGender() + ")");
			pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void deleteStudent(int studentid) {
		try {
			String query1="delete from enrolled where studentid=?";
			String query2 = "delete from student where sid=?";
			System.out.println("delete from student where sid=" + studentid);
			PreparedStatement pstmt1 = conn.prepareStatement(query1);
			PreparedStatement pstmt2 = conn.prepareStatement(query2);
			pstmt1.setInt(1, studentid);
			pstmt1.executeUpdate();
			pstmt1.close();
			
			pstmt2.setInt(1, studentid);
			pstmt2.executeUpdate();
			pstmt2.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void updateStudent(Student student) {
		try {
			String query = "update student set firstname=? ,lastname=?,age=?,gender=? where sid=?";

			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, student.getFirstname());
			pstmt.setString(2, student.getLastname());
			pstmt.setInt(3, student.getAge());
			pstmt.setString(4, student.getGender());
			pstmt.setInt(5, student.getSid());

			System.out.println("update student set firstname=" + student.getFirstname() + ",lastname="
					+ student.getLastname() + ",age=" + student.getAge() + ",gender=" + student.getGender()
					+ " where sid=" + student.getSid() + ")");
			pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<Student> getAllStudents() {
		List<Student> students = new ArrayList<>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from student");
			while (rs.next()) {
				Student stu = new Student();
				stu.setSid(rs.getInt("sid"));
				stu.setFirstname(rs.getString("firstname"));
				stu.setLastname(rs.getString("lastname"));
				stu.setAge(rs.getInt("age"));
				stu.setGender(rs.getString("gender"));
				students.add(stu);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return students;
	}

	@Override
	public Student getStudentById(int studentid) {
		Student stu = new Student();
		try {
			String query = "Select * from student where sid=?";
			System.out.println("Select * from student where sid=" + studentid);
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, studentid);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				stu.setSid(rs.getInt("sid"));
				stu.setFirstname(rs.getString("firstname"));
				stu.setLastname(rs.getString("lastname"));
				stu.setAge(rs.getInt("age"));
				stu.setGender(rs.getString("gender"));

			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return stu;
	}

	@Override
	public List<Course> getCoursesById(int studentid) {
		List<Course> listCourse = new ArrayList<Course>();
		
		try {
			String query = "select c.cNumber,c.cName,c.quarter " + "from student s, enrolled e, course c"
					+ " where e.studentid = s.sid and e.courseid = c.cid and s.sid=?";
			System.out.println(query + " " + studentid);
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, studentid);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Course course=new Course();
				course.setcNumber(rs.getString("cNumber"));
				course.setcName(rs.getString("cName"));
				course.setQuarter(rs.getString("quarter"));
				listCourse.add(course);
				System.out.println(course.toString());
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	
		return listCourse;
	}


}
