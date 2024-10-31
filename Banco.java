package data;
package data.biblioteca;

<%@ page import="data.biblioteca.Banco" %>

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Banco {
    private Connection con;
    private Statement st;
    private ResultSet rs;

    public Banco() {
        String url = "jdbc:mysql://localhost:3306/biblioteca";
        String user = "root";
        String pass = "";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver")
            con = DriverManager.getConnection(url, user, pass);
            st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        } catch (ClassNotFoundException | SQLException e) { System.out.println("Erro: " + e.getMessage());
        }
        public String getUsuario(String login) throws SQLException {
            String nome = "";
            rs = stmt.executeQuery("SELECT * FROM usuario where login = '" + login + "'");
            while(rs.next()) {
                nome = rs.getString("nome");
            }
            return nome;
        }

        public boolean getLogin(String login, String senha) throws SQLException {
            String dbSenha = "";
            rs = stmt.executeQuery("SELECT senha FROM usuario where login = '" + login + "'");
            while(rs.next()) {
                dbSenha = rs.getString("senha");
            }
            return dbSenha.equals(senha);
        }
    }


