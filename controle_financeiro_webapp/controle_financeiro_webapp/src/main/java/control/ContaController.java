package control;

import dao.ContaDAO;
import model.Conta;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.List;

@WebServlet("contas")
public class ContaController extends HttpServlet {

    private ContaDAO contaDAO;

    public void init() {
        contaDAO = new ContaDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idUsuario = Integer.parseInt(req.getParameter("idUsuario"));

        String nomeConta = req.getParameter("nomeConta");
        Double saldoDisponivel = Double.parseDouble(req.getParameter("saldoDisponivel"));

        Conta conta = new Conta();
        conta.setIdUsuario(idUsuario);
        conta.setNomeConta(nomeConta);
        conta.setSaldoDisponivel(saldoDisponivel);

        try {
            contaDAO.criar(conta);
            resp.sendRedirect(req.getContextPath() + "/contas");
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
