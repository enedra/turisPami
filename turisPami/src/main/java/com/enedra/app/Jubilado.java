package com.enedra.app;

import org.javalite.activejdbc.Model;
import static spark.Spark.*;

import com.google.gson.Gson;
import java.util.*;

import com.google.gson.Gson;

public class Jubilado extends Model{
	
	private int dni;
	private String name;
	private String direction;
	private String tel;
	
	public Jubilado(){
	
	}

	public Jubilado(String nombre, Integer documento, String direccion, String telefono){
    	set("name", nombre);
    	set("dni", documento);
    	set("direccion", direccion);
    	set("tel", telefono);
    }

    public String getName() {
        return this.getString("name");
    }

    public Integer getDocumento() {
        return this.getInteger("dni");
    }

    public int getDireccion() {
        return this.getString("direccion");
	}

	public String getTelefono() {
        return this.getString("tell");
	}

	public User getJubilado(int id){
		Jubilado j = Jubilado.findById(id);
		return j;
	}

	public void deleteUser(int id){
		Jubilado j = Jubilado.findById(id);
		j.delete();
	}

	public void createJubilado(String nombre, Integer documento, String direccion, String telefono){
		Jubilado jubilado = new Jubilado(nombre, documento, direccion, telefono);
		jubilado.saveIt();
	}

	public Map getAllJubilado(){
		Map j = new HashMap();
		j.put("id", this.get("id"));
		j.put("mane", this.get("name"));
		j.put("dno", this.get("dni"));
		j.put("direccion", this.get("direccion"));
		j.put("tel", this.get("tel"));
		return j;
	}

	public List<Map> getAllJubilados(){
		List<Jubilado> u = new ArrayList<Jubilado>();
        j = Jubilado.findAll();
        List<Map> us = new ArrayList<Map>();
        for (Jubilado jubilado : j) {
            js.add(jubilado.getAllJubilado());
        }
		return js;
	}
}

