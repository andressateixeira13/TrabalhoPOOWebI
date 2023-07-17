package control;

import dao.MovimentacaoDAO;
import model.Movimentacao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@WebServlet("movimentacoes")
public class MovimentacaoController extends HttpServlet {

    private MovimentacaoDAO movimentacaoDAO;

    public void init() {
        movimentacaoDAO = new MovimentacaoDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Movimentacao> movimentacoes = movimentacaoDAO.listarPorConta(1);
            req.setAttribute("movimentacoes", movimentacoes);

            RequestDispatcher dispatcher = req.getRequestDispatcher("/movimentacoes.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idConta = Integer.parseInt(req.getParameter("idConta"));
        String setor = req.getParameter("setor");
        Double valor = Double.parseDouble(req.getParameter("valor"));

        Movimentacao movimentacao = new Movimentacao();
        movimentacao.setIdConta(idConta);
        //movimentacao.setData();
        movimentacao.setSetor(setor);
        movimentacao.setValor(valor);

        try {
            movimentacaoDAO.criar(movimentacao);
            resp.sendRedirect(req.getContextPath() + "/movimentacoes");
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
