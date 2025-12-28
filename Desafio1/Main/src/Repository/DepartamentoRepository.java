package Repository;

import Model.Departamento;

import java.util.ArrayList;
import java.util.List;

public class DepartamentoRepository {

    public static List<Departamento> departamento = new ArrayList<>();

    public static void criar(Departamento d) {
        departamento.add(d);
    }

    public static List<Departamento> ler(){
        return departamento;
    }

    public static void remover(Integer id) {
        departamento.removeIf(d -> d.getId().equals(id));
    }
}
