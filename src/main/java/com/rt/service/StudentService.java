package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.StudentDao;
import com.rt.dto.StudentResponseDTO;
import com.rt.entities.Student;

@Service
public class StudentService {
	
	@Autowired
	StudentDao sd;
	
	public boolean addStudent(Student s, String user) {
		boolean rs = sd.addStudent(s,user);
		return rs;
	}

	public boolean updateStudent(Student s) {
		boolean rs = sd.updateStudent(s);
		return rs;
	}

	public boolean removeStudent(int id) {
		boolean rs = sd.removeStudent(id);
		return rs;
	}

	public StudentResponseDTO selectStudent(int id) {
		
		Student s = sd.selectStudent(id);
		
		StudentResponseDTO st = new StudentResponseDTO();
		
		st.setId(s.getId());
		st.setName(s.getName());
		st.setMobile(s.getMobile());
		
		return st;
		
	}

	public List<Student> selectAllStudent(String user) {
		return sd.selectAllStudent(user);
	}

	public int getAllStudentsCount() {
		return sd.getAllStudentsCount();
	}

}
