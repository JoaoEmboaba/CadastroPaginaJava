package Test;

import Model.CadastroModel;
import java.sql.Array;
import java.util.ArrayList;
import Controller.CadastroController;

public class CadastroTest {
    
    public static void main(String[]args){

        CadastroModel objModel = new CadastroModel();
        CadastroController objController = new CadastroController();
        ArrayList<CadastroModel> lista = objController.pesquisarCadastro();

        for(int i = 0; i < lista.size(); i ++){

            System.out.println("\n");
            System.out.println("id: "+ lista.get(i).getId());
            System.out.println("nome: "+ lista.get(i).getNome());
            System.out.println("Senha: "+ lista.get(i).getSenha());
            System.out.println("\n");

        }

        /* Parte do código exclusiva para testes dos métodos da classe controller */ 
    
    }
}