package dao;

import model.Conta;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContaDAO {
    public void criar(Conta conta) throws SQLException {
        String sql = "INSERT INTO Contas (id_usuario, nome_conta, saldo_disponivel) VALUES (?, ?, ?)";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, conta.getIdUsuario());
            pt.setString(2, conta.getNomeConta());
            pt.setDouble(3, conta.getSaldoDisponivel());

            pt.executeUpdate();
        }
    }

    public void atualizar(Conta conta) throws SQLException {
        String sql = "UPDATE Contas SET nome_conta = ?, saldo_disponivel = ? WHERE id_conta = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setString(1, conta.getNomeConta());
            pt.setDouble(2, conta.getSaldoDisponivel());
            pt.setInt(3, conta.getIdConta());

            pt.executeUpdate();
        }
    }

    public void excluir(int idConta) throws SQLException {
        String sql = "DELETE FROM Contas WHERE id_conta = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, idConta);

            pt.executeUpdate();
        }
    }

    public Conta obterPorId(int idConta) throws SQLException {
        Conta conta = null;
        String sql = "SELECT * FROM Contas WHERE id_conta = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, idConta);

            try (ResultSet rs = pt.executeQuery()) {
                if (rs.next()) {
                    conta = new Conta();
                    conta.setIdConta(rs.getInt("id_conta"));
                    conta.setIdUsuario(rs.getInt("id_usuario"));
                    conta.setNomeConta(rs.getString("nome_conta"));
                    conta.setSaldoDisponivel(rs.getDouble("saldo_disponivel"));
                }
            }
        }

        return conta;
    }
}

