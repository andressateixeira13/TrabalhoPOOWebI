package dao;

import model.Investimento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InvestimentoDAO {
    public void criar(Investimento investimento) throws SQLException {
        String sql = "INSERT INTO Investimentos (id_conta, nome_investimento, valor_investido, rendimento) VALUES (?, ?, ?, ?)";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, investimento.getIdConta());
            pt.setString(2, investimento.getNomeInvestimento());
            pt.setDouble(3, investimento.getValorInvestido());
            pt.setDouble(4, investimento.getRendimento());

            pt.executeUpdate();
        }
    }

    public void atualizar(Investimento investimento) throws SQLException {
        String sql = "UPDATE Investimentos SET nome_investimento = ?, valor_investido = ?, rendimento = ? WHERE id_investimento = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setString(1, investimento.getNomeInvestimento());
            pt.setDouble(2, investimento.getValorInvestido());
            pt.setDouble(3, investimento.getRendimento());
            pt.setInt(4, investimento.getIdInvestimento());

            pt.executeUpdate();
        }
    }

    public void excluir(int idInvestimento) throws SQLException {
        String sql = "DELETE FROM Investimentos WHERE id_investimento = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, idInvestimento);

            pt.executeUpdate();
        }
    }

    public List<Investimento> listarPorConta(int idConta) throws SQLException {
        List<Investimento> investimentos = new ArrayList<>();
        String sql = "SELECT * FROM Investimentos WHERE id_conta = ?";

        try (Connection con = ConectaDB.getConectaDB();
             PreparedStatement pt = con.prepareStatement(sql)) {
            pt.setInt(1, idConta);

            try (ResultSet rs = pt.executeQuery()) {
                while (rs.next()) {
                    Investimento investimento = new Investimento();
                    //investimento.setIdInvestimento(rs.getInt("id_investimento"));
                    //investimento.setIdConta(rs.getInt("id_conta"));
                    investimento.setNomeInvestimento(rs.getString("nome_investimento"));
                    investimento.setValorInvestido(rs.getDouble("valor_investido"));
                    investimento.setRendimento(rs.getDouble("rendimento"));

                    investimentos.add(investimento);
                }
            }
        }

        return investimentos;
    }
}
