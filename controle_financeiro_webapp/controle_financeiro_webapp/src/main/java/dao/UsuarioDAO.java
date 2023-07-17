package dao;

import model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
    public Usuario getUsuario(String nickname, String senha) {
        Usuario usuario = new Usuario();

        try (Connection con = ConectaDB.getConectaDB()) {
            String sql = "SELECT * FROM usuarios WHERE nickname = ? AND senha = ?";
            PreparedStatement pt = con.prepareStatement(sql);
            pt.setString(1, nickname);
            pt.setString(2, senha);

            ResultSet rs = pt.executeQuery();

            while (rs.next()) {
                usuario.setIdUsuario(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setNickname(rs.getString("nickname"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.out.println("Nome do usuário: " + usuario.getNome());

        return usuario;
    }

    public void criar(Usuario usuario) throws SQLException {
        String sql = "INSERT INTO usuarios(nome, nickname, email, senha) VALUES (?, ?, ?, ?)";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setString(1, usuario.getNome());
            pt.setString(2, usuario.getNickname());
            pt.setString(3, usuario.getEmail());
            pt.setString(4, usuario.getSenha());

            pt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void excluir(int id) throws SQLException {
        String sql = "DELETE FROM usuarios WHERE id_usuario = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, id);

            pt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

