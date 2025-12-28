package Model;

public class Cargo {

    private Integer id;
    private String nome;
    private Departamento departamento;

    public Cargo(Integer id, String nome, Departamento departamento) {
        this.id = id;
        this.nome = nome;
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

    @Override
    public String toString() {
        return "Cargo{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", departamento=" + departamento +
                '}';
    }
}
