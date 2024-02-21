package utils;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexao {
    public static Connection conectar() throws SQLException{
        String url = "jdbc:postgresql://localhost:5432/postgres";
        String user = "postgres";
        String senha = "admin";
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return DriverManager.getConnection(url, user, senha);
    }
}