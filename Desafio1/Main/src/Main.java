import Model.Cargo;
import Model.Colaborador;
import Model.Departamento;
import Model.Solicitacao;


import java.util.List;
import java.util.Date;

public class Main {
    public static void main(String[] args) {

        List<String> motivo = List.of(
                "FÉRIAS"
        );

        List<String> status = List.of(
                "PENDENTE"
        );


        Departamento logistica = new Departamento(1, "Logistica");
        Cargo assistenteLog = new Cargo(1, "Assistente", logistica);
        Colaborador colaborador = new Colaborador(1, "neto", new Date(), new Date(),
                new Date(), 1000.0, "sem anotação", assistenteLog, logistica);
        Solicitacao solicitacao = new Solicitacao(1, "ferias", 4.0, motivo, status, colaborador);

        System.out.println(logistica.toString());
        System.out.println(assistenteLog.toString());
        System.out.println(colaborador);
        System.out.println(solicitacao);

    }
}