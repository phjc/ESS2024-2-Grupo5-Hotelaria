Scenario: Usuário realiza o cadastro como pessoa física

Given que o usuário acessa a página de “Cadastro” 
When o usuário preenche os campos obrigatórios:   
| Tipo de Cadastro      | Pessoa Física
| Nome                         | "Bruno Teste Silva" 
| CPF                            | "123.456.789-00" 
| Data de nascimento | "11/07/2000" 
| UF                              | "SP" 
| Email                         | "bruno.teste@example.com"  
| Login                         | "brunoteste" 
| Senha                        | "senhaExempl@" 
And clica em "Cadastrar" 
Then o sistema exibe a mensagem "Cadastro realizado com sucesso" 
And o sistema envia um email de confirmação para "bruno.teste@example.com" 
And o usuário é redirecionado para a página inicial logado com seu perfil
