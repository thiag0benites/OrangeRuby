class LoginPage < SitePrism::Page
    set_url '/register' #url obtida do env
    element :txt_usuario, '#txtUsername'
    element :txt_senha, '#txtPassword'
    element :btn_login, '#btnLogin'
    element :lbl_welcome, '#welcome'

    def logar(usuario, senha)
        txt_usuario.set usuario
        txt_senha.set senha
        btn_login.click
    end
end