package control;

import model.Movimentacao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RelatorioController {

    @WebServlet("/relatorios")
    public class RelatoriosServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            List<Movimentacao> movimentacoes = new ArrayList<>();
            // Aqui você deve implementar a lógica para buscar os dados do banco de dados e preencher a lista 'movimentacoes'.
            // Por exemplo:
            // movimentacoes = movimentacaoDAO.buscarMovimentacoes();

            request.setAttribute("movimentacoes", movimentacoes);
            request.getRequestDispatcher("relatorios.jsp").forward(request, response);
        }
    }
}
