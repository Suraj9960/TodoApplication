package com.springboot.web.Application.TodoApp;

import java.time.LocalDate;
import java.util.List;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.validation.Valid;

@Controller
public class TodoAppControllerJpa {
	
	
	private TodoJpaRepositiry repository;

	public TodoAppControllerJpa( TodoJpaRepositiry repository) {
		super();
		this.repository = repository;
	}
	
	@RequestMapping("List-todos")
	public String ListAllTodo(ModelMap model) {
		String username = getLoggedUsername(model);
		List<TodoClass> todo1 =  repository.findByUsername(username);
		model.addAttribute("todo1", todo1);
		
		return "TodoList";
	}
	
	          /* For Adding todos into the list   */
	
	@RequestMapping(value="add-todo", method = RequestMethod.GET)
	public String ShowAddTodoPage(ModelMap model, TodoClass todos) {
		String username = getLoggedUsername(model);
		TodoClass todo = new TodoClass(0,username,"",todos.getTargetDate(),todos.isDone());
		model.put("todos", todo);
		return "addTodo";
	}
	
	
	@RequestMapping(value="add-todo", method = RequestMethod.POST)
	public String AddTodoPage(ModelMap model , @Valid TodoClass todos) {
		
		String username = getLoggedUsername(model);
		todos.setUsername(username);
		repository.save(todos);
		
//		todoservice.addTodo(username,todos.getDescription(),todos.getTargetDate(),false);
		return "redirect:List-todos";
	}
	
	         /* For Deleting todos into the list   */
	@RequestMapping("delete-todo")
	public String deleteTodo(@RequestParam int id ) {
		repository.deleteById(id);
//		todoservice.deleteById(id);
		
		return "redirect:List-todos";
	}
	
	
	        /* For Updating todos into the list   */
	@RequestMapping(value="update-todo", method= RequestMethod.GET)
	public String showDeleteTodo(@RequestParam int id, ModelMap model ) {
		TodoClass todos = repository.findById(id).get();
		model.addAttribute("todos", todos);
		return "addTodo";
	}
	
	@RequestMapping(value="update-todo", method = RequestMethod.POST)
	public String updateTodoPage(ModelMap model , @Valid TodoClass todos) {
		
		String username = getLoggedUsername(model);
		todos.setUsername(username);
		repository.save(todos);
//		todoservice.updateTodo(todos);
		return "redirect:List-todos";
	}
	
	private String getLoggedUsername(ModelMap model) {
		org.springframework.security.core.Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();
	}
	
	
}
