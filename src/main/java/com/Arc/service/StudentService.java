package com.Arc.service;

import java.util.List;

import com.Arc.model.Student;
import com.Arc.model.StudentPast;

public interface StudentService {
public Student saveStudent(Student student);
public Student getStudentById(Long student_id) throws Exception;
public void saveStudent(StudentPast studentPast);
public List<StudentPast> findAllByStudentId(Long studentId);
public void deleteStudentPastById(Long studPastId);
}
