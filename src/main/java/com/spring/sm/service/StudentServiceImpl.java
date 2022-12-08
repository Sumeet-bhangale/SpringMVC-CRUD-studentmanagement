package com.spring.sm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.spring.sm.DAO.StudentDAO;
import com.spring.sm.api.Student;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDAO;
	
	@Override
	public List<Student> loadStudents() {
		// TODO Auto-generated method st
		
		List<Student> studentList = studentDAO.loadStudents();
		return studentList;
	}

	@Override
	public void saveStudent(Student student) {
		// TODO Auto-generated method stub
		
		// Write your Business Logic
		// Company Criteria
		
		if(student.getCountry().equals("USA")) {
			// Write the Email sending Logic Right here
			System.out.println("Mail is Sent to : "+student.getName());
		}
		
		
		
		studentDAO.saveStudent(student);
		
		
	}

	@Override
	public Student getStudent(int id) {
		
		
		
		return studentDAO.getStudent(id);
	}

	@Override
	public void update(Student student) {
	
		studentDAO.update(student);
		
	}

	@Override
	public void deleteStudent(int id) {
		studentDAO.deleteStudent(id);
		
	}

	
	
	
}
