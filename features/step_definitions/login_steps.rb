Dado("que eu acesso o site OrangeHrm") do
    visit 'https://opensource-demo.orangehrmlive.com/'
end
  
Quando("preencho os campos login e senha") do
    find('#txtUsername').send_keys "Admin"
    find('#txtPassword').send_keys "admin123"
    find('#btnLogin').click
end

Então("sou redirecionado para a pagina inicial") do
   page.has_css?('#welcome', :visible => false)
   # expect(page).to have_content "Welcome Admin"
end