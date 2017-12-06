package net.manxlei.springboot.web.dao;

import org.springframework.data.repository.CrudRepository;

import net.manxlei.springboot.web.entity.CustomerEntity;

public interface CustomerRepository extends CrudRepository<CustomerEntity, Integer>{

	
}
