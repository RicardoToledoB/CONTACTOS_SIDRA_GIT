package com.models.jpa;
import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;
@Entity
public class Funcionario implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @SequenceGenerator(name="generacion",sequenceName = "generacion", allocationSize = 1 )
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "generacion")
    @Column(name="id_funcionario",unique=true,nullable=false)
    private Integer id_funcionario;
    private String nombres;
    private String apepat;
    private String apemat;
    private String cargo;
    private String profesion;
    private String telefono;
    private String celular;
    private String correo;
    private String estado;
    @Transient String departamentoNombre;
    @Transient String establecimientoNombre;
    @Transient int iddepartamento;
    @Transient int idestablecimiento;
    @ManyToOne
    @JoinColumn(name="id_departamento")
    private Departamento departamento;
    public Funcionario(){}
   
    public Funcionario(int id_funcionario,String nombres,String apepat,String telefono,String departamentoNombre,String establecimientoNombre,String estado){
        this.id_funcionario=id_funcionario;
        this.nombres=nombres;
        this.apepat=apepat;
        this.telefono=telefono;
        this.departamentoNombre=departamentoNombre;
        this.establecimientoNombre=establecimientoNombre;
        this.estado=estado;
        
    }
    public Funcionario(int id_funcionario,String nombres,String apepat,String telefono,int iddepartamento,String departamentoNombre,String establecimientoNombre,String estado){
        this.id_funcionario=id_funcionario;
        this.nombres=nombres;
        this.apepat=apepat;
        this.telefono=telefono;
        this.iddepartamento=iddepartamento;
        this.departamentoNombre=departamentoNombre;
        this.establecimientoNombre=establecimientoNombre;
        this.estado=estado;
        
    }
    public Funcionario(int id_funcionario,String nombres,String apepat,String apemat,String cargo,String profesion,String correo,String telefono,String celular,int idestablecimiento,String establecimientoNombre,int iddepartamento,String departamentoNombre,String estado){
        this.id_funcionario=id_funcionario;
        this.nombres=nombres;
        this.apepat=apepat;
        this.apemat=apemat;
        this.cargo=cargo;
        this.profesion=profesion;
        this.correo=correo;
        this.telefono=telefono;
        this.celular=celular;
        this.idestablecimiento=idestablecimiento;
        this.establecimientoNombre=establecimientoNombre;
        this.iddepartamento=iddepartamento;
        this.departamentoNombre=departamentoNombre;
        this.estado=estado;
        
    }
    public Integer getId_funcionario() {
        return id_funcionario;
    }
    public void setId_funcionario(Integer id_funcionario) {
        this.id_funcionario = id_funcionario;
    }
    public Departamento getDepartamento() {
        return departamento;
    }
    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
        departamento.getFuncionario().add(this);
    }
    public String getNombres() {
        return nombres;
    }
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    public String getApepat() {
        return apepat;
    }
    public void setApepat(String apepat) {
        this.apepat = apepat;
    }
    public String getApemat() {
        return apemat;
    }
    public void setApemat(String apemat) {
        this.apemat = apemat;
    }
    public String getCargo() {
        return cargo;
    }
    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    public String getProfesion() {
        return profesion;
    }
    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }
    public String getTelefono() {
        return telefono;
    }
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getCelular() {
        return celular;
    }
    public void setCelular(String celular) {
        this.celular = celular;
    }
    public String getCorreo() {
        return correo;
    }
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public Integer getId() {
        return id_funcionario;
    }
    public void setId(Integer id_funcionario) {
        this.id_funcionario = id_funcionario;
    }
   
}
