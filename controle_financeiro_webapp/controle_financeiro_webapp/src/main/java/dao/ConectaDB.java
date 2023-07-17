package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectaDB {
    private static final String URL = "jdbc:postgresql://localhost:5035/banco_webapp";
    private static final String USUARIO = "postgres";
    private static final String SENHA = "1130";

    public static void main(String[] args) {
        Connection conexao = getConectaDB();
        if (conexao != null) {
            System.out.println("Conexão executada com sucesso!");
        }
    }

    public static Connection getConectaDB() {
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection(URL, USUARIO, SENHA);
        } catch (ClassNotFoundException e) {
            System.out.println("Classe de conexão com o banco não configurada.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("URL, usuário ou senha do banco incorretos.");
            e.printStackTrace();
        }
        return null;
    }
}

