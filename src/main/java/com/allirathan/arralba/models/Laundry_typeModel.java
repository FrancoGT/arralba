package com.allirathan.arralba.models;
import javax.persistence.*;

@Entity
@Table(name="laundry_type")
public class Laundry_typeModel 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(unique = true, nullable = false)
	private long laun_type_id;
	private String laun_type_desc;
	private Double laun_type_price;
	public Laundry_typeModel() {}
	public long getLaun_type_id() 
	{
		return laun_type_id;
	}
	public void setLaun_type_id(long laun_type_id) 
	{
		this.laun_type_id = laun_type_id;
	}
	public String getLaun_type_desc() 
	{
		return laun_type_desc;
	}
	public void setLaun_type_desc(String laun_type_desc) 
	{
		this.laun_type_desc = laun_type_desc;
	}
	public Double getLaun_type_price() 
	{
		return laun_type_price;
	}
	public void setLaun_type_price(Double laun_type_price) 
	{
		this.laun_type_price = laun_type_price;
	}
}