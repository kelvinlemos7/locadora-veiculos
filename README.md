# Locadora de Veículos - Projeto de Banco de Dados

Este projeto simula um sistema de locação de veículos utilizando modelagem relacional e comandos SQL. Ele foi desenvolvido como parte de um trabalho acadêmico na faculdade, com foco em criação de banco de dados, inserção de dados e consultas SQL.

## Objetivo

Criar um banco de dados relacional para uma locadora de veículos, com tabelas relacionadas e integridade referencial garantida através de chaves primárias e estrangeiras. O sistema deve permitir:

- Gerenciamento de clientes, veículos, manutenções, pagamentos e locações.
- Controle dos estados de pagamento e disponibilidade dos veículos.
- Consultas úteis para o negócio, como veículos mais alugados e clientes com pagamentos pendentes.

## Estrutura do Banco

O banco de dados é composto pelas seguintes tabelas:

| Tabela        | Descrição                                    |
|---------------|----------------------------------------------|
| Cliente       | Armazena informações dos clientes da locadora. |
| Veiculo       | Contém os veículos disponíveis para locação.   |
| Manutencao    | Registra manutenções realizadas nos veículos.  |
| Pagamento     | Controla os pagamentos das locações.           |
| Locacao       | Registra o período de locação e vincula cliente e pagamento. |
| LocacaoVeiculo| Tabela associativa entre locações e veículos.  |

## Regras e Restrições

- Todos os campos são NOT NULL.
- As tabelas estão relacionadas por chaves estrangeiras.
- Estados como "Alugado" ou "Pago" são definidos por enums, facilitando o controle de status.

## Scripts SQL

Os scripts estão organizados na pasta `/scripts`, e devem ser executados na seguinte ordem:

- `01-criacao-banco.sql` – Criação do banco e tabelas com constraints.
- `02-inserts.sql` – Inserção de dados fictícios em todas as tabelas.
- Consultas:
  - `01-consulta-manutencao.sql` – Lista as manutenções feitas.
  - `02-consulta-arrecadado.sql` – Soma total arrecadado em pagamentos pagos.
  - `03-consulta-locacoes.sql` – Mostra os veículos mais alugados.
  - `04-consulta-pendentes.sql` – Lista clientes com valores pendentes.

## Tecnologias utilizadas

- MySQL – Criação e manipulação do banco.
- GitHub – Armazenamento e versionamento do projeto.

## Como executar

1. Abra o MySQL Workbench ou terminal MySQL.
2. Execute o script `01-criacao-banco.sql`.
3. Execute o script `02-inserts.sql`.
4. Use o scripts 03 para fazer consultas.

## Autor

Kelvin Kauan Pereira Lemos – [@kelvinlemos7](https://github.com/kelvinlemos7)

## Licença

Este projeto é apenas acadêmico. Não possui fins comerciais.
