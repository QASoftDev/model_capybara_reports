

Dado('que acesso a pagina do sistema') do
        visit "/"
  end
  
  Quando('envio minhas credenciais de acesso com: {string} e {string}') do |email, senha|
        find("input[type='email']").set email
        find("input[type='password']").set senha
        click_on "Acessar sistema"
        # sleep 20
  end

  Então('devo ser redirecionado para a pagina principal') do
      expect(page.find('#logo-home')['src']).to have_content 'logo.png'
    end