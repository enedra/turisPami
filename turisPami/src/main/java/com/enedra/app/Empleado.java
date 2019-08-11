package com.enedra.app;

import org.javalite.activejdbc.Model;
import static spark.Spark.*;

import com.google.gson.Gson;
import java.util.*;

import com.google.gson.Gson;

public class Empleado extends Model
{
	
	private Integer dni;
	private String nombre;
	private String direccion;
	private String telefono;
	private String localidadOrigen;
	private String turno;
	private boolean gerente;
	private Integer adicional;


	public Empleado(){ }

	public Empleado(Integer dni, String name, String direccion, String telefono, String localidadOrigen, String turno){
    	set("dni", dni);
    	set("nombre", name);
    	set("direccion", direccion);
    	set("telefono", telefono);
    	set("localidadOrigen", localidadOrigen);
    	set("turno", turno);
    }

    public Integer getDNI() {
        return this.getInteger("dni");
    }

    public String getName() {
        return this.getString("name");
    }

    public String getDireccion() {
        return this.getString("direccion");
    }

    public String gettelefono() {
        return this.getString("telefono");
	}

	public Empleado getEmpleado(Integer id){
		Empleado e = Empleado.findById(id);
		return e;
	}

	public void deleteEmpleado(Integer id){
		Empleado e = Empleado.findById(id);
		e.delete();
	}

	public void createEmpleado(String Empleadoname, String password, boolean admin){
		Empleado empleado = new Empleado(mpleadoname, password, admin);
		empleado.saveIt();
	}

	public Map getAllEmpleado(){
		Map u = new HashMap();
		u.put("id", this.get("id"));
		u.put("mane", this.get("name"));
		u.put("pass", this.get("pass"));
		u.put("admi", this.get("admi"));
		u.put("canc", this.get("canc"));
		u.put("cani", this.get("cani"));
		return u;
	}

	public List<Map> getAllEmpleados(){
		List<Empleado> u = new ArrayList<Empleado>();
        u = Empleado.findAll();
        List<Map> us = new ArrayList<Map>();
        for (Empleado Empleado : u) {
            us.add(Empleado.getAllEmpleado());
        }
		return us;
	}
}

