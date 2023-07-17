package dao;

import model.Cofrinho;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CofrinhoDAO {
    public void criar(Cofrinho cofrinho) throws SQLException {
        String sql = "INSERT INTO Cofrinhos (id_conta, nome_cofrinho, valor_total_esperado, valor_atual) VALUES (?, ?, ?, ?)";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, cofrinho.getIdConta());
            pt.setString(2, cofrinho.getNomeCofrinho());
            pt.setDouble(3, cofrinho.getValorTotalEsperado());
            pt.setDouble(4, cofrinho.getValorAtual());

            pt.executeUpdate();
        }
    }

    public void atualizar(Cofrinho cofrinho) throws SQLException {
        String sql = "UPDATE Cofrinhos SET nome_cofrinho = ?, valor_total_esperado = ?, valor_atual = ? WHERE id_cofrinho = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setString(1, cofrinho.getNomeCofrinho());
            pt.setDouble(2, cofrinho.getValorTotalEsperado());
            pt.setDouble(3, cofrinho.getValorAtual());
            pt.setInt(4, cofrinho.getIdCofrinho());

            pt.executeUpdate();
        }
    }

    public void excluir(int idCofrinho) throws SQLException {
        String sql = "DELETE FROM Cofrinhos WHERE id_cofrinho = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, idCofrinho);

            pt.executeUpdate();
        }
    }

    public List<Cofrinho> listarPorConta(int idConta) throws SQLException {
        List<Cofrinho> cofrinhos = new ArrayList<>();
        String sql = "SELECT * FROM Cofrinhos WHERE id_conta = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, idConta);

            try (ResultSet rs = pt.executeQuery()) {
                while (rs.next()) {
                    Cofrinho cofrinho = new Cofrinho();
                    //cofrinho.setIdCofrinho(rs.getInt("id_cofrinho"));
                    //cofrinho.setIdConta(rs.getInt("id_conta"));
                    cofrinho.setNomeCofrinho(rs.getString("nome_cofrinho"));
                    cofrinho.setValorTotalEsperado(rs.getDouble("valor_total_esperado"));
                    cofrinho.setValorAtual(rs.getDouble("valor_atual"));

                    cofrinhos.add(cofrinho);


                }
            }
        }

        return cofrinhos;
    }
}

