package com.models.jpa;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;
@Entity
public class Departamento implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name="generacion",sequenceName = "generacion", allocationSize = 1 )
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "generacion")
    @Column(name="id_departamento",unique=true,nullable=false)
    private Integer id_departamento;
    private String nombre;
    private String estado;
    @Transient String nuevoEstablecimiento;
    @Transient int id_establecimiento;
    @ManyToOne
    @JoinColumn(name="id_establecimiento")
    private Establecimiento establecimiento;
    @OneToMany(mappedBy="Departamento")
    private List<Funcionario> funcionario=new ArrayList<Funcionario>();
    public Departamento(){}
    public Departamento(int id_departamento,String nombre){
        this.id_departamento=id_departamento;
        this.nombre=nombre;
    }
    public Departamento(int id_departamento,String nombre,String establecimiento,String estado){
        this.id_departamento=id_departamento;
        this.nombre=nombre;
        nuevoEstablecimiento=establecimiento;
        this.estado=estado;
    }
    public Departamento(int id_departamento,String nombre,String establecimiento,int id_establecimiento,String estado){
        this.id_departamento=id_departamento;
        this.nombre=nombre;
        this.id_establecimiento=id_establecimiento;
        nuevoEstablecimiento=establecimiento;
        this.estado=estado;
    }
    public List<Funcionario> getFuncionario() {
        return funcionario;
    }
    public void setFuncionario(List<Funcionario> funcionario) {
        this.funcionario = funcionario;
    }
    public Integer getId_departamento() {
        return id_departamento;
    }
    public void setId_departamento(Integer id_departamento) {
        this.id_departamento = id_departamento;
    }
    public Establecimiento getEstablecimiento() {
        return establecimiento;
    }
    public void setEstablecimiento(Establecimiento establecimiento) {
        this.establecimiento = establecimiento;
        establecimiento.getDepartamento().add(this);
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
        return id_departamento;
    }
    public void setId(Integer id_departamento) {
        this.id_departamento = id_departamento;
    }
}
