package student.csulb.edu.dao;


import java.util.List;

import student.csulb.edu.model.Course;
import student.csulb.edu.model.Student;

public interface StudentDAO {

	public void addStudent(Student student);
	public void deleteStudent(int studentid);
	public void updateStudent(Student student);
	public List<Student> getAllStudents();
	public Student getStudentById(int studentid);
	
	public List<Course> getCoursesById(int studentid);
}
