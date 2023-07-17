package dao;

import model.Movimentacao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class MovimentacaoDAO {
    public void criar(Movimentacao movimentacao) throws SQLException {
        String sql = "INSERT INTO Movimentacao (id_conta, setor, valor) VALUES (?, ?, ?)";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, movimentacao.getIdConta());
            //pt.setString(2, movimentacao.getData());
            pt.setString(3, movimentacao.getSetor());
            pt.setDouble(4, movimentacao.getValor());

            pt.executeUpdate();
        }
    }

    public void atualizar(Movimentacao movimentacao) throws SQLException {
        String sql = "UPDATE Movimentacao SET setor = ?, valor = ? WHERE id_movimentacao = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setString(1, movimentacao.getSetor());
            pt.setDouble(2, movimentacao.getValor());
            pt.setInt(3, movimentacao.getIdMovimentacao());

            pt.executeUpdate();
        }
    }

    public void excluir(int id_movimentacao) throws SQLException {
        String sql = "DELETE FROM Movimentacao WHERE id_movimentacao = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, id_movimentacao);

            pt.executeUpdate();
        }
    }

    public List<Movimentacao> listarPorConta(int id_conta) throws SQLException {
        List<Movimentacao> movimentacoes = new ArrayList<>();
        String sql = "SELECT * FROM Movimentacao WHERE id_conta = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, id_conta);

            try (ResultSet rs = pt.executeQuery()) {
                while (rs.next()) {
                    Movimentacao movimentacao = new Movimentacao();
                    movimentacao.setIdMovimentacao(rs.getInt("id_movimentacao"));
                    movimentacao.setIdConta(rs.getInt("id_conta"));
                    movimentacao.setSetor(rs.getString("setor"));
                    movimentacao.setValor(rs.getDouble("valor"));

                    movimentacoes.add(movimentacao);
                }
            }
        }

        return movimentacoes;
    }
}

