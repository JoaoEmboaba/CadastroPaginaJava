package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Util.ConnectionFactory;
import Model.CadastroModel;
import java.util.ArrayList;
import javax.xml.namespace.QName;

public class CadastroController {

    Connection cnn = null;
    PreparedStatement state = null;
    ResultSet rs = null;
    ArrayList<CadastroModel> lista = new ArrayList<>();


    public static void inserirCadastro(CadastroModel obj) {

        String sql = "INSERT INTO cadastros (nome, senha, email) VALUES (?, ?, ?)";

        Connection cnn = null;
        PreparedStatement state = null;

        try {
            cnn = ConnectionFactory.getConnection();
            state = cnn.prepareStatement(sql);
            state.setString(1, obj.getNome());
            state.setString(2, obj.getSenha());
            state.setString(3, obj.getEmail());
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

        }
    }

    public ArrayList<CadastroModel> pesquisarCadastro(){

        String sql = "SELECT * FROM cadastros";
        cnn = ConnectionFactory.getConnection();

        try {
            
            state = cnn.prepareStatement(sql);
            rs = state.executeQuery(sql);
            
            while(rs.next()){

                CadastroModel objModel = new CadastroModel();
                objModel.setId(rs.getInt("id"));
                objModel.setNome(rs.getString("nome"));
                objModel.setSenha(rs.getString("senha"));
                objModel.setEmail(rs.getString("email"));

                lista.add(objModel);
            }
            
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao pesquisar cadastro" + ex.getMessage(), ex);
        }
        
        return lista;

    }

}
