package com.spring.sm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.sm.DAO.StudentDAO;
import com.spring.sm.api.Student;
//import com.spring.sm.api.StudentDTO;
import com.spring.sm.service.StudentService;

@Controller
public class StudentController {

	
	
	@Autowired
	private StudentService studentService;

	@GetMapping("/showStudent")
	public String showStudentList(Model model) {

		// Called the DAO MEthod to get the Data
		List<Student> studentList = studentService.loadStudents();


		model.addAttribute("students", studentList);

		return "student-list";

	}

	@GetMapping("/showAddStudentPage")
	public String addStudent(Model model) {

		Student student = new Student();

		model.addAttribute("student", student);

		return "add-student";

	}
	
	

	@PostMapping("/save-student")
	public String saveStudent(Student student) {

		// Wrirting Logic ton save data to db
		System.out.println(student);
		
		
		// Do a Service call to save Student
		
		
		if(student.getId() == 0) {
			
			// insert a new Record 
			studentService.saveStudent(student);
		}
		
		else {
			// Do an Update 
			studentService.update(student);
		}
		
		
		//
		 
		
	
		return "redirect:/showStudent";
		
}
	
	@GetMapping("/updateStudent")
	public String updateStudent(@RequestParam("userId") int id,Model model) {

//		Student myStudent = new Student();
//model.addAttribute("student", myStudent);
	System.out.println("Looking Data for the Student Having id : "+id);
	
	
	Student theStudent = studentService.getStudent(id);

	System.out.println(theStudent);
	
	
	// Setting The Student Information

//	student.setId(theStudent.getId());
//	student.setName(theStudent.getName());
//	student.setMobile(theStudent.getMobile());
//	student.setCountry(theStudent.getCountry());
	
	// Or
	
	model.addAttribute("student", theStudent);
	
	
		return "add-student";

	}
	
	
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("userId") int id) {
		
	// Capture the ID of Student 
		//Once Capture do a Service call to Delete the Studewnt
		
		studentService.deleteStudent(id);
	
		return "redirect:/showStudent";

	}
	
	
	
	

}
