
package Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;

public class ConnectionFactory {
    
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/site";
    private static final String USER = "root";
    private static final String PASS = "";
    
    public static Connection getConnection(){
        
        try {
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL, USER, PASS);
        } catch (Exception ex) {
            throw new RuntimeException("Erro ao conectar com o banco de dados", ex);
        }
    }
    
    public static void closeConnection(Connection connection){
        
        try {
            if(connection!=null){
                connection.close();
            }
        } catch (Exception ex) {
            throw new RuntimeException("Erro ao fechar a conexão com o banco de dados", ex);
        }
    }
    
    public static void closeConnection(Connection connection, PreparedStatement state){
        ConnectionFactory.closeConnection(connection);
        
        try {
            if(state!=null){
                state.close();
            }
        } catch (Exception ex) {
            throw new RuntimeException("Erro ao fechar a conexão com o banco de dados", ex);
        }
    }  
}
