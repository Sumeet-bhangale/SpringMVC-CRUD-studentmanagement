package com.spring.sm.DAO;

import java.util.List;

import com.spring.sm.api.Student;

public interface StudentDAO {

	List<Student> loadStudents();

  void saveStudent(Student student);
  
  Student getStudent(int id);

void update(Student student);

void deleteStudent(int id);
}
