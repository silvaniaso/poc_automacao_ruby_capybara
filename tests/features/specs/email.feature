# language: pt

Funcionalidade: Criar uma conta de email do Google

Eu como um usuário do google, gostaria de criar uma 
conta de email do google.

Cenario: Cadastro de email com sucesso.
Dado que eu esteja no site do google para criar um e-mail
Quando preencho todos os campos do formulario e clico no botão próxima etapa.
| Nome           | Wilson                 |
| Sobrenome      | Barboza Silva Santos   |
| usuário        | willssan0578           |
| senha          | Teste@1234             |
| confirmarSenha | Teste@1234             |
| diaNascimento  | 23                     |
| mêsNascimento  | novembro               |
| anoNascimento  | 1982                   |
| Sexo           | Maculino               |
| celular        | 1199999-5712           |
| endereçoEmail  | teste@automacao.com.br |
| Local          | Brasil                 |
Então eu vejo o modal para aceitar os termos de aceite

