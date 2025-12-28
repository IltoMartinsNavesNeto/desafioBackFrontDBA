package Repository;

import Model.Cargo;

import java.util.ArrayList;
import java.util.List;

public class CargoRepository {

    public static List<Cargo> cargo = new ArrayList<>();

    public static void criar(Cargo c) {
        cargo.add(c);
    }

    public static List<Cargo> ler() {
        return cargo;
    }

    public static void remover(Integer id) {
        cargo.removeIf(c -> c.getId().equals(id));
    }
}


