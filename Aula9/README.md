# Digital House - Turma 01 - IOS
## Revisão das aulas anteriores - Exercícios de fixação

### Exercício 1
Criar um app de Lista de Compras:
- Um item de compra, deve ter nome e quantidade
- Eu posso: Criar, Editar, Excluir
- Ao inserir o nome do produto, o app já deve verificar se existe ou nao e mostrar numa label. Se já existe, deve trazer a quantidade no textField de quantidade.
 - Deve também mudar o texto dos botões de acordo com as opções.
- Se eu tentar criar um item já existente, devo somente atualizar a quantidade.
- O app deve exibir em uma label o nome dos itens existentes
- Deve exibir um botão Limpar que limpa toda tela
Layout quando insere um novo:
[Digite o nome do produto aqui  ]
[Digite a quantidade aqui            ]
Produto novo
[Salvar] [Limpar]
---------------------------------------
Layout quando insere um existente:
[Amaciante     ]
[2             ]
Produto já existente
[Salvar edição] [Excluir] [Limpar]

Sobre o Desenvolvimento:
- Classe de item deve estar numa classe num arquivo separado.
- Para verificar se o item existe, deve ser colocada a string tudo para minusculo e ignorar caracteres especiais.
- A lista deve ser exibida para o usuário numa label.
- Ao clicar em qualquer botão, deve esconder o teclado.
- No campo quantidade, o teclado deve ser numérico.


### Exercício 2
Uma Classe Pessoa, que tem:
- Nome
- Sobrenome
- Idade
Deve ter os métodos:
- getNomeCompleto que retorna o nome e Sobrenome juntos
- levantar() - implementar um print que acorda as 8 horas
Uma Classe Aluno que herda a classe Pessoa, mas tem a propriedade turma.
Deve fazer polimorfismo para levantar as 6 horas.
Classe idoso deve herdar a classe Pessoa, deve levantar as 11 horas e tem um contador de quantas vezes tomou remédio. Porém deve haver o método tomouRemedio que vai adicionar mais um, e um getQuantidadeDeRemedios que retorna quantas vezes tomou remédio. Não deve poder acessar a propriedade por fora da classe.
Uma classe SalaDeAula, que deve ter como propriedades nome e uma lista de alunos.
Crie na tela uma textField, sete o delegate para a viewController e implemente um print em TODOS os métodos do delegate da textField.
