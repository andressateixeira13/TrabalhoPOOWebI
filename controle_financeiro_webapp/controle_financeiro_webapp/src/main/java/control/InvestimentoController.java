package control;

import dao.InvestimentoDAO;
import model.Investimento;

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

@WebServlet("investimentos")
public class InvestimentoController extends HttpServlet {

    private InvestimentoDAO investimentoDAO;

    public void init() {
        investimentoDAO = new InvestimentoDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Investimento> investimentos = investimentoDAO.listarPorConta(1);
            req.setAttribute("investimentos", investimentos);

            RequestDispatcher dispatcher = req.getRequestDispatcher("/investimentos.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idConta = Integer.parseInt(req.getParameter("idConta"));
        String nomeInvestimento = req.getParameter("nomeInvestimento");
        Double valorInvestido = Double.parseDouble(req.getParameter("valorInvestido"));
        Double rendimento = Double.parseDouble(req.getParameter("rendimento"));

        Investimento investimento = new Investimento();
        investimento.setIdConta(idConta);
        investimento.setNomeInvestimento(nomeInvestimento);
        investimento.setValorInvestido(valorInvestido);
        investimento.setRendimento(rendimento);

        try {
            investimentoDAO.criar(investimento);
            resp.sendRedirect(req.getContextPath() + "/investimentos");
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
