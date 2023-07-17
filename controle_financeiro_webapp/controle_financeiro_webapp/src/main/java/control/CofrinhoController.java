package control;

import dao.CofrinhoDAO;
import model.Cofrinho;

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

@WebServlet("cofrinhos")
public class CofrinhoController extends HttpServlet {

    private CofrinhoDAO cofrinhoDAO;

    public void init() {
        cofrinhoDAO = new CofrinhoDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Cofrinho> cofrinhos = cofrinhoDAO.listarPorConta(1);
            req.setAttribute("cofrinhos", cofrinhos);

            RequestDispatcher dispatcher = req.getRequestDispatcher("/cofrinho.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nomeCofrinho = req.getParameter("nomeCofrinho");
        Double valorTotalEsperado = Double.parseDouble(req.getParameter("valorTotalEsperado"));
        Double valorAtual = Double.parseDouble(req.getParameter("valorAtual"));

        Cofrinho cofrinho = new Cofrinho();
        cofrinho.setNomeCofrinho(nomeCofrinho);
        cofrinho.setValorTotalEsperado(valorTotalEsperado);
        cofrinho.setValorAtual(valorAtual);

        try {
            cofrinhoDAO.criar(cofrinho);
            resp.sendRedirect(req.getContextPath() + "/cofrinho.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}

