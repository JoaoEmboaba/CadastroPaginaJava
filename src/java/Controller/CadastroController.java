package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Util.ConnectionFactory;
import Model.CadastroModel;

public class CadastroController {

    public static void inserirCadastro(CadastroModel obj) {

        String sql = "INSERT INTO cadastros (nome, senha) VALUES (?, ?)";

        Connection cnn = null;
        PreparedStatement state = null;

        try {
            cnn = ConnectionFactory.getConnection();
            state = cnn.prepareStatement(sql);
            state.setString(1, obj.getNome());
            state.setString(2, obj.getSenha());
            state.execute();
            state.close();
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao cadastrar aluno" + ex.getMessage(), ex);
        } finally {
            ConnectionFactory.closeConnection(cnn, state);
        }
    }

    public static void excluirCadastro(CadastroModel obj){

        String sql = "DELETE FROM cadastros WHERE id = ?";

        Connection cnn = null;
        PreparedStatement state = null;

        try {
            cnn = ConnectionFactory.getConnection();
            state = cnn.prepareStatement(sql);
            state.setInt(1, obj.getId());
            state.execute();
            state.close();
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao excluir cadastro"+ ex.getMessage(), ex);
            // TODO: handle exception
        }
    }
}
