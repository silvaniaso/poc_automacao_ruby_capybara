class CadastroPage < SitePrism::Page

    element :campo_nome, '#FirstName'
    element :campo_sobrenome, '#LastName'
    element :campo_usuario, '#GmailAddress'
    element :campo_senha, '#Passwd'
    element :campo_confirmar_senha, '#PasswdAgain'
    element :campo_dia_nascimento, '#BirthDay'
    element :campo_ano_nascimento, '#BirthYear'
    element :campo_celular, '#RecoveryPhoneNumber'
    element :campo_email, '#RecoveryEmailAddress'
    element :campo_proxima_etapa, '#submitbutton'

    def cadastro_google(nome, sobrenome, usuario, senha, confirmar_senha, dia_nascimento, ano_nascimento, celular, email)
        campo_nome.set nome
        campo_sobrenome.set sobrenome
        campo_usuario.set usuario
        campo_senha.set senha
        campo_confirmar_senha.set confirmar_senha
        campo_dia_nascimento.set dia_nascimento
        @mes_Nascimento = find(:xpath, '//*[@id="BirthMonth"]/div[1]').click
        @selecionar_mes_Nascimento = find(:xpath, '//*[@id=":b"]').click        
        campo_ano_nascimento.set ano_nascimento
        @sexo = find(:xpath, '//*[@id=":d"]').click 
        @selecionar_sexo = find(:xpath, '//*[@id=":f"]').click
        campo_celular.set celular
        campo_email.set email
        campo_proxima_etapa.click
    end
end