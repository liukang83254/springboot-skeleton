package net.manxlei.springboot.web.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.manxlei.springboot.web.dao.TodoRepository;
import net.manxlei.springboot.web.entity.TodoEntity;
import net.manxlei.springboot.web.model.Todo;

@Service
public class TodoService {
	
	
	public List<Todo> retrieveTodos(String user) {
		List<Todo> filteredTodos = new ArrayList<Todo>();
		
		Iterable<TodoEntity> todoEntitys = todoRepository.findAll();
		for (TodoEntity entity : todoEntitys) {
			if (user.equalsIgnoreCase(entity.getUser())) {
				Todo todo = new Todo();
				todo.setDesc(entity.getDesc());
				todo.setId(todo.getId());
				todo.setDone(entity.isDone());
				todo.setTargetDate(entity.getTargetDate());
				todo.setUser(entity.getUser());
				
				filteredTodos.add(todo);
			}
		}
		return filteredTodos;
	}

	public Todo retrieveTodo(int id) {
		Todo todo = null;
		TodoEntity entity = todoRepository.findOne(id);
		if (entity != null) {
			todo = new Todo();
			todo.setDesc(entity.getDesc());
			todo.setId(todo.getId());
			todo.setDone(entity.isDone());
			todo.setTargetDate(entity.getTargetDate());
			todo.setUser(entity.getUser());
		}
		return todo;
	}

	public void addTodo(String name, String desc, Date targetDate,
			boolean isDone) {
		TodoEntity entity = new TodoEntity();
		entity.setDesc(desc);
		entity.setDone(isDone);
		entity.setTargetDate(targetDate);
		entity.setUser(name);
		todoRepository.save(entity);
	}

	public void deleteTodo(int id) {
		todoRepository.delete(id);
	}
	
	public void updateTodo(Todo todo) {
		TodoEntity entity = new TodoEntity();
		entity.setDesc(todo.getDesc());
		entity.setId(todo.getId());
		entity.setDone(todo.isDone());
		entity.setTargetDate(todo.getTargetDate());
		entity.setUser(todo.getUser());
		todoRepository.save(entity);
	}
	
	private TodoRepository todoRepository;

	@Autowired
    public void setProductRepository(TodoRepository todoRepository) {
        this.todoRepository = todoRepository;
    }
}