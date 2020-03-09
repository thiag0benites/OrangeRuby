Dado("que eu acesso o site OrangeHrm") do
    #visit 'https://opensource-demo.orangehrmlive.com/'
    @login_page = LoginPage.new
    @login_page.load # Captura url registrada no env
end
  
Quando("preencho os campos login e senha") do
    #@login_page.txt_usuario.set 'Admin' - Chamando elemento do page objects
    #find('#txtUsername').send_keys "Admin" - criando elemento e executando metodo
    @login_page.logar('Admin', 'admin123')
end

Então("sou redirecionado para a pagina inicial") do
   page.has_css?('#welcome', :visible => false)
   # expect(page).to have_content "Welcome Admin"
end