package Repository;

import Model.Solicitacao;

import java.util.ArrayList;
import java.util.List;

public class SolicitacaoRepository {

    private static List<Solicitacao> solicitacao = new ArrayList<>();

    public static void criar(Solicitacao s) {
        solicitacao.add(s);
    }

    public static List<Solicitacao> ler(){
        return solicitacao;
    }

    public static void remover(Integer id) {
        solicitacao.removeIf(s -> s.getId().equals(id));
    }
}
