package com.allirathan.arralba.repositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.allirathan.arralba.models.Laundry_typeModel;

@Repository
public interface Laundry_typeRepository extends CrudRepository<Laundry_typeModel, Long> 
{
	
}