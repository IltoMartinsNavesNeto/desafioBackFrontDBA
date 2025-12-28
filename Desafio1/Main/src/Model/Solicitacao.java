package Model;

import java.util.List;

public class Solicitacao {

    private Integer id;
    private String descricao;
    private Double valorSolicitacao;
    private List<String> motivo;
    private List<String> statusSolicitacao;
    private Colaborador colaborador;

    public Solicitacao(Integer id, String descricao, Double valorSolicitacao, List<String> motivo, List<String> statusSolicitacao, Colaborador colaborador) {
        this.id = id;
        this.descricao = descricao;
        this.valorSolicitacao = valorSolicitacao;
        this.motivo = motivo;
        this.statusSolicitacao = statusSolicitacao;
        this.colaborador = colaborador;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Double getValorSolicitacao() {
        return valorSolicitacao;
    }

    public void setValorSolicitacao(Double valorSolicitacao) {
        this.valorSolicitacao = valorSolicitacao;
    }

    public List getMotivo() {
        return motivo;
    }

    public void setMotivo(List motivo) {
        this.motivo = motivo;
    }

    public List getStatusSolicitacao() {
        return statusSolicitacao;
    }

    public void setStatusSolicitacao(List statusSolicitacao) {
        this.statusSolicitacao = statusSolicitacao;
    }

    public Colaborador getColaborador() {
        return colaborador;
    }

    public void setColaborador(Colaborador colaborador) {
        this.colaborador = colaborador;
    }

    @Override
    public String toString() {
        return "Solicitacao{" +
                "id=" + id +
                ", descricao='" + descricao + '\'' +
                ", valorSolicitacao=" + valorSolicitacao +
                ", motivo=" + motivo +
                ", statusSolicitacao=" + statusSolicitacao +
                ", colaborador=" + colaborador +
                '}';
    }
}