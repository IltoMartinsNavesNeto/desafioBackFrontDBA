package Repository;

import Model.Colaborador;

import java.util.ArrayList;
import java.util.List;

public class ColaboradorRepository {

    public static List<Colaborador> colaborador = new ArrayList<>();

    public static void criar(Colaborador c) {
        colaborador.add(c);
    }

    public static List<Colaborador> ler() {
        return colaborador;
    }

    public static void remover(Integer id) {
        colaborador.removeIf(c -> c.getId().equals(id));
    }
}
