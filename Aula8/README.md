# Digital House - Turma 01 - IOS
## Exercícios Protocol - Projeto Protocolos.playground

### Exercício 1
Crie um protocolo chamado Imprimível.
Defina o método Imprimir neste protocolo, com a seguinte assinatura:
func imprimir() -> Void
Depois, crie as seguintes classes: Contrato, Foto e Documento.
Faça cada uma implementar o protocolo Imprimível e defina o comportamento do método Imprimir em cada uma delas:
- Contrato: imprima na tela “Sou um contrato muito legal”
- Foto: imprima na tela “Sou uma selfie”
- Documento: “Sou um documento do Word”.

Crie uma classe Impressora que contenha uma lista de imprimíveis inicializada sem elementos.
Depois, crie dois métodos na classe impressora:

- public func imprimirTudo() -> Void
Esse método será encarregado de percorrer a lista de imprimíveis e fazer a impressão.
- public func agregarImprimível(umImprimível: Imprimible) -> Void
Esse método será encarregado de adicionar um imprimível à lista da impressora.

### Exercício 2
Crie um protocolo chamado Voador.
Defina o método Voar nesse protocolo, com a seguinte assinatura:
func voar() -> Void

Depois, crie as seguintes classes: Pato, Avião, Super-Homem.
Faça cada uma implementar o protocolo Voador e definir o comportamento do método Voar em cada caso:
- Pato: o pato tem uma energia. Cada vez que voa, ele perde 5 unidades de energia e é exibida na tela a frase “Estou voando como um pato”
- Avião: o avião tem horas de voo. Cada vez que o avião voa, soma 13h de voo e é exibida na tela a frase “Estou voando como um avião”
- Super-Homem: o Super-Homem tem experiência. Cada vez que o Super-Homem voa, a experiência dele aumenta 3 unidades, e é exibida na tela a frase “Estou voando como um campeão”
Crie uma classe TorreDeControle que contenha uma lista de voadores inicializada sem elementos.
Depois, crie dois métodos na classe TorreDeControle:
- public func voamTodos() -> Void
Esse método será encarregado de percorrer a lista de voadores e fazer com que eles voem.
- public func adicionarVoador(umVoador: Voaador) -> Void
Esse método será encarregado de adicionar um voador à lista de voadores.

## Exemplo de delegate e text field - Projeto ExecTextFieldDelegate

## Desafios

### Desafio 1
Fazer um app que tenha a classe usuário, que possa trabalhar com email e senha. A primeira vez que o usuário inserir o email e senha devemos habilitar o botão de cadastro.
Ao clicar em cadastrar devemos limpar os campos, ao inserir os dados pela segunda vez, devemos validar se o usuário já foi previamente cadastrado, se sim, pintamos a tela de vermelho, se não, pintamos de verde.

### Desafio 2: Fazer um App que:
Deve haver uma tela de login, o usuário deve informar o email e senha e escolher entre [Login] [Cadastrar];
Se o usuário tentar cadastrar um usuário já existente, deve exibir um alerta de erro, caso contrário, deve informar que foi cadastrado com sucesso.
Quando o usuário logar com sucesso, deve exibir um alerta informando que logou com sucesso. Se o usuário tentar logar mas não existir ou estiver inválido, deve exibir um alerta de usuário inválido. Podem ser cadastrados infinitos usuários enquanto o app estiver aberto.

### Projeto com os dois desafios estáo na pasta telaDeLogin
