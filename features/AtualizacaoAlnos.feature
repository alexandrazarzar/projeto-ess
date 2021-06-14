Scenario: Cadastro de aluno sucesso.
    Given Eu estou logado como "Professor".
    And Eu estou na página "Cadastrar Aluno"
    And O aluno com CPF "828.585.977-07" não está na lista de alunos cadastrados.
    When Eu cadastro o aluno com CPF "828.585.977-07", nome "João Pedro Henrique" e email "jphsd@cin.ufpe.br"
    Then Eu vejo uma mensagem de confirmação.
    And Ainda estou na página "Cadastrar Aluno"
    And O aluno com CPF "828.585.977-07" está na lista de alunos cadastrados.

Scenario: Cadastro de aluno com CPF inválido.
    Given Eu estou logado como "Professor".
    And Eu estou na página "Cadastrar Aluno"
    And O aluno com CPF "123.456.789-00" não está na lista de alunos cadastrados.
    When Eu cadastro o aluno com CPF "123.456.789-00", nome "João Pedro Henrique" e email "jphsd@cin.ufpe.br"
    Then Eu vejo uma mensagem de erro dizendo "CPF inválido"
    And Ainda estou na página "Cadastrar Aluno"
    And O aluno com CPF "123.456.789-00" não está na lista de alunos cadastrados.

Scenario: Cadastro de aluno com email inválido.
    Given Eu estou logado como "Professor".
    And Eu estou na página "Cadastrar Aluno"
    And O aluno com CPF "828.585.977-07" não está na lista de alunos cadastrados.
    When Eu cadastro o aluno com CPF "828.585.977-07", nome "João Pedro Henrique" e email "jphsdcin.ufpe.br"
    Then Eu vejo uma mensagem de erro dizendo "Email inválido"
    And Ainda estou na página "Cadastrar Aluno"
    And O aluno com CPF "828.585.977-07" não está na lista de alunos cadastrados.

Scenario: Cadastro de aluno com CPF duplicado.
    Given Eu estou logado como "Professor".
    And Eu estou na página "Cadastrar Aluno"
    And O aluno com CPF "828.585.977-07" está na lista de alunos cadastrados.
    When Eu cadastro o aluno com CPF "828.585.977-07", nome "João Pedro Henrique" e email "jphsd@cin.ufpe.br"
    Then Eu vejo uma mensagem de erro dizendo "CPF duplicado"
    And Ainda estou na página "Cadastrar Aluno"
    And O aluno com CPF "828.585.977-07" está na lista de alunos cadastrados.
