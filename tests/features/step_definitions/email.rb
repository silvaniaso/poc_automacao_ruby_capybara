#encoding: utf-8

Dado("que eu esteja no site do google para criar um e-mail") do                            
    visit(@url)             
end                                                                                        
                                                                                             
Quando("preencho todos os campos do formulario e clico no botão próxima etapa.") do |table|

    @nome = table.rows_hash['Nome']
    @sobrenome = table.rows_hash['Sobrenome']
    @usuario = table.rows_hash['usuário']
    @senha = table.rows_hash['senha']
    @confirmar_senha = table.rows_hash['confirmarSenha']
    @dia_nascimento = table.rows_hash['diaNascimento']
    @ano_nascimento = table.rows_hash['anoNascimento']
    @celular = table.rows_hash['celular']
    @email = table.rows_hash['endereçoEmail']

    #@cadastro = CadastroPage.new
    cadastro.cadastro_google(@nome,@sobrenome,@usuario,@senha,
                              @confirmar_senha,@dia_nascimento,@ano_nascimento,@celular,@email)
            
end                                                                                        
                                                                                             
Então("eu vejo o modal para aceitar os termos de aceite") do 
    expect(page).to have_content 'Privacidade e Termos'                                      
end                                                                                        