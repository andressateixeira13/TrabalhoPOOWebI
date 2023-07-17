package control;

import dao.UsuarioDAO;
import model.Usuario;
import service.UsuarioService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("usuarios")
public class UsuarioController extends HttpServlet {

    private UsuarioDAO usuarioDAO;

    public void init() {
        usuarioDAO = new UsuarioDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        System.out.println("bateu no login");

        String nickname = req.getParameter("nickname");
        String senha = req.getParameter("senha");
        System.out.println(nickname+" - "+senha);


        if (new UsuarioService().autenticar(nickname, senha)){
           req.getRequestDispatcher("/principal.jsp");
        }else{
            req.setAttribute("msgServidor", "Usuario inválido");
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nomeUsuario = req.getParameter("nomeUsuario");
        String nickname = req.getParameter("nickname");
        String email = req.getParameter("email");
        String senhaUsuario = req.getParameter("senhaUsuario");

        Usuario usuario = new Usuario();
        usuario.setNome(nomeUsuario);
        usuario.setNickname(nickname);
        usuario.setEmail(email);
        usuario.setSenha(senhaUsuario);

        try {
            usuarioDAO.criar(usuario);
            resp.sendRedirect(req.getContextPath() + "/principal.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

}

