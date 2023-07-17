package service;

import dao.UsuarioDAO;
import model.Usuario;

public class UsuarioService {
    public boolean autenticar(String nickname, String senha){

        Usuario u = new UsuarioDAO().getUsuario(nickname, senha);
        if(u.getNome() == null){
            System.out.println("usuário null -> "+u.toString());
            return false;
        }else{
            if(u.getNickname().equals(nickname) && u.getSenha().equals(senha)){
                return true;
            }else{
                return false;
            }
        }




    }
}
