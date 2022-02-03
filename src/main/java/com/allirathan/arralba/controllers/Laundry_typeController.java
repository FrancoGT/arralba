package com.allirathan.arralba.controllers;
import java.util.ArrayList;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.allirathan.arralba.models.Laundry_typeModel;
import com.allirathan.arralba.services.Laundry_typeService;

@Controller
@RequestMapping("/laundry_type")
public class Laundry_typeController
{
	@Autowired
	Laundry_typeService laundry_typeService;
	@GetMapping()
	public ArrayList<Laundry_typeModel> get_laundry_types()
	{
		return laundry_typeService.get_laundry_types();
	}
	@PostMapping()
	public Laundry_typeModel save_laundry_type(@RequestBody Laundry_typeModel laundry_type)
	{
		return this.laundry_typeService.save_laundry_type(laundry_type);
	}
	@GetMapping(path="/{laun_type_id}")
	public Optional<Laundry_typeModel> get_laundry_type_by_id(@PathVariable("laun_type_id") Long laun_type_id)
	{
		return this.laundry_typeService.get_laundry_type_by_id(laun_type_id);
	}
	@DeleteMapping(path="/{laun_type_id}")
	public String delete_laundry_type_by_id(@PathVariable("laun_type_id") Long laun_type_id)
	{
		boolean ok = this.laundry_typeService.delete_laundry_type_by_id(laun_type_id);
		if (ok)
		{
			return "Se eliminó el registro con id " + laun_type_id;
		}
		else
		{
			return "No pudo eliminar el registro con id " + laun_type_id;
		}
	}
}