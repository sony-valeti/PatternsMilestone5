package com.valetiClasses.DMS.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.valetiClasses.DMS.Models.Dog;

/**
 * 
 * @author Sony Valeti
 */
public interface DogRepository extends CrudRepository<Dog,Integer> {
	List<Dog> findByName(String name);
}
