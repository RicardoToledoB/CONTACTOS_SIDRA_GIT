package com.models.jpa;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
@Entity
public class Establecimiento implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name="generacion",sequenceName = "generacion", allocationSize = 1 )
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "generacion")
    @Column(name="id_establecimiento",unique=true,nullable=false)
    private Integer id_establecimiento;
    private String nombre;
    private String estado;
    @OneToMany(mappedBy="Establecimiento")
    private List<Departamento> departamento=new ArrayList<Departamento>();
    public Establecimiento(){}
    public Establecimiento(int id_establecimiento,String nombre,String estado){
       this.id_establecimiento=id_establecimiento;
       this.nombre=nombre;
       this.estado=estado;
    }
    public Integer getId_establecimiento() {
        return id_establecimiento;
    }
    public void setId_establecimiento(Integer id_establecimiento) {
        this.id_establecimiento = id_establecimiento;
    }
    public List<Departamento> getDepartamento() {
        return departamento;
    }
    public void setDepartamento(List<Departamento> departamento) {
        this.departamento = departamento;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public Integer getId() {
        return id_establecimiento;
    }
    public void setId(Integer id_establecimiento) {
        this.id_establecimiento = id_establecimiento;
    }
}
