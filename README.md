# Especificação de Interação da API de Livros com Java, Oracle Forms/Reports e PL/SQL Developer

## Descrição do Projeto

Este projeto é um estudo sobre a interação entre uma API de Livros e um sistema desenvolvido em Java, Oracle Forms/Reports e PL/SQL Developer. O objetivo é demonstrar como integrar essas tecnologias para permitir a consulta de informações sobre livros, utilizando um fluxo de dados que vai desde a entrada do usuário até a geração de relatórios.

## Fluxo do Programa

1. **Inserção do ID do Livro**:
   - O usuário insere o ID do livro em uma tela do Oracle Forms.
   - O ID é armazenado em uma tabela no banco de dados.

2. **Consumo da API**:
   - O programa em Java recupera o ID armazenado.
   - A API de Livros é consumida, retornando os dados correspondentes ao ID informado, que são então armazenados em outra tabela.

3. **Apresentação dos Dados**:
   - As informações obtidas da API são apresentadas nos campos da tela do Oracle Forms.

4. **Geração de Relatório**:
   - Os dados armazenados são formatados e apresentados em um relatório gerado pelo Oracle Reports.

## Tecnologias Utilizadas

- **Linguagem:** Java
- **Frameworks:** Oracle Forms, Oracle Reports
- **Gerenciador de Dependências:** Maven
- **Dependências:**
  - `jackson-databind`: Para manipulação de JSON.
  - `httpclient`: Para realizar requisições HTTP à API.
- **Ferramenta de Banco de Dados:** PL/SQL Developer

## Estrutura do Banco de Dados

As tabelas, triggers e sequences foram criadas utilizando o PL/SQL Developer, garantindo a integridade e ordenação dos índices.

### Tabelas e Estruturas

- **Tabela de Livros:** Armazena os IDs dos livros.
- **Tabela de Dados da API:** Armazena os dados retornados pela API.
- **Triggers:** Gerenciam inserções e garantem a integridade dos dados.
- **Sequences:** Auto-incrementam os IDs.

## Considerações Finais

Este projeto foi uma prática valiosa para mim, ajudando a entender a integração de diferentes tecnologias. Ele me permitiu desenvolver habilidades em manipulação de dados, consumo de APIs e geração de relatórios. A estrutura e o fluxo do programa foram projetados para facilitar a compreensão dos conceitos apresentados, tornando a experiência ainda mais enriquecedora.
