import Model.Cargo;
import Model.Departamento;

public class Main {
    public static void main(String[] args) {

        Departamento logistica = new Departamento(1, "Logistica");
        Cargo assistenteLog = new Cargo(1, "Assistente", logistica);

        System.out.println(logistica.toString());
        System.out.println(assistenteLog.toString());
    }
}