package com.springboot.web.Application.TodoApp;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TodoJpaRepositiry extends JpaRepository<TodoClass,Integer>{
	
	public List<TodoClass> findByUsername(String username);
	

}
