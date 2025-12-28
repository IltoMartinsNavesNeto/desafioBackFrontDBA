package Model;

import java.util.Date;

public class Colaborador {

    private Integer id;
    private String nome;
    private Date dataDeNascimento;
    private Date dataDeAdmissao;
    private Date dataDeDemissao;
    private Double salario;
    private String anotacoes;
    private Cargo cargo;
    private Departamento departamento;

    public Colaborador(Integer id, String nome, Date dataDeNascimento, Date dataDeAdmissao, Date dataDeDemissao, Double salario, String anotacoes, Cargo cargo, Departamento departamento) {
        this.id = id;
        this.nome = nome;
        this.dataDeNascimento = dataDeNascimento;
        this.dataDeAdmissao = dataDeAdmissao;
        this.dataDeDemissao = dataDeDemissao;
        this.salario = salario;
        this.anotacoes = anotacoes;
        this.cargo = cargo;
        this.departamento = departamento;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDataDeNascimento() {
        return dataDeNascimento;
    }

    public void setDataDeNascimento(Date dataDeNascimento) {
        this.dataDeNascimento = dataDeNascimento;
    }

    public Date getDataDeAdmissao() {
        return dataDeAdmissao;
    }

    public void setDataDeAdmissao(Date dataDeAdmissao) {
        this.dataDeAdmissao = dataDeAdmissao;
    }

    public Date getDataDeDemissao() {
        return dataDeDemissao;
    }

    public void setDataDeDemissao(Date dataDeDemissao) {
        this.dataDeDemissao = dataDeDemissao;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public String getAnotacoes() {
        return anotacoes;
    }

    public void setAnotacoes(String anotacoes) {
        this.anotacoes = anotacoes;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }

    public Departamento getDepartamento() {
        return departamento;
    }

    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }

    @Override
    public String toString() {
        return "Colaborador{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", dataDeNascimento=" + dataDeNascimento +
                ", dataDeAdmissao=" + dataDeAdmissao +
                ", dataDeDemissao=" + dataDeDemissao +
                ", salario=" + salario +
                ", anotacoes='" + anotacoes + '\'' +
                ", cargo=" + cargo +
                ", departamento=" + departamento +
                '}';
    }
}
