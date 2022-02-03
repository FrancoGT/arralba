package com.allirathan.arralba.services;
import java.util.ArrayList;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.allirathan.arralba.models.Laundry_typeModel;
import com.allirathan.arralba.repositories.Laundry_typeRepository;

@Service
public class Laundry_typeService 
{
	@Autowired
	Laundry_typeRepository laundry_typeRepository;
	public ArrayList<Laundry_typeModel> get_laundry_types()
	{
		return (ArrayList<Laundry_typeModel>) laundry_typeRepository.findAll();
	}
	public Laundry_typeModel save_laundry_type(Laundry_typeModel laundry_type)
	{
		return laundry_typeRepository.save(laundry_type);
	}
	public Optional<Laundry_typeModel> get_laundry_type_by_id(Long id)
	{
		return laundry_typeRepository.findById(id);
	}
	public boolean delete_laundry_type_by_id(Long id)
	{
		try
		{
			laundry_typeRepository.deleteById(id);
			return true;
		}
		catch(Exception err)
		{
			return false;
		}
	}
}