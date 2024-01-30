package com.Arc.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Arc.model.Student;
import com.Arc.model.StudentPast;
import com.Arc.repository.StudentPastRepository;
import com.Arc.repository.StudentRepository;
import com.Arc.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private StudentPastRepository studentPastRepository;
	
	@Override
	public Student saveStudent(Student student) {
		return studentRepository.save(student);
	}
	@Override
    public Student getStudentById(Long studentId) throws Exception {
    	
            Optional<Student> optionalStudent = studentRepository.findById(studentId);
            if (optionalStudent.isPresent()) {
                return optionalStudent.get();
            } else {
                throw new Exception("Student not found with ID: " + studentId);
            }
        }
	@Override
	public void saveStudent(StudentPast studentPast) {
		studentPastRepository.save(studentPast);
		
	}
	@Override
	public List<StudentPast> findAllByStudentId(Long studentId) {
		// TODO Auto-generated method stub
		return studentPastRepository.findAllByStudentId(studentId);
	}
	@Override
	public void deleteStudentPastById(Long studPastId) {
		// TODO Auto-generated method stub
		studentPastRepository.deleteById(studPastId);
		
	}
	

	








}
