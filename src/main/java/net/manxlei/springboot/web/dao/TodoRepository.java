package net.manxlei.springboot.web.dao;

import org.springframework.data.repository.CrudRepository;
import net.manxlei.springboot.web.entity.TodoEntity;

public interface TodoRepository extends CrudRepository<TodoEntity, Integer>{

	
}
