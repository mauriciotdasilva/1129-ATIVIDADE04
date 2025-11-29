# 1129-ATIVIDADE04
MySQL

# Sistema de Gerenciamento de Membros, Ministérios e Departamentos

Este repositório apresenta um conjunto de scripts SQL desenvolvidos para estruturar e gerenciar o banco de dados de uma aplicação voltada ao controle de **membros**, **endereços**, **departamentos** e **ministérios** de uma instituição.  
O projeto foi organizado para manter relações robustas, integridade referencial e facilitar o uso em aplicações reais.

---

## Estrutura Banco de Dados

O sistema possui as seguintes entidades principais:

- **tbl_membro** – Armazena dados pessoais dos membros.
- **tbl_endereco** – Informações de endereço dos membros.
- **tbl_ministerio** – Registra os ministérios existentes.
- **tbl_departamento** – Lista os departamentos.
- **tbl_detalhe_ministerio** – Faz a ligação N:N entre membros e ministérios.
- **tbl_detalhe_departamento** – Faz a ligação N:N entre membros e departamentos.

Cada tabela possui chaves primárias, chaves estrangeiras e regras de integridade bem definidas.

---

## Relacionamentos

- **Membro → Endereço**  
- **Membros ↔ Ministérios**  
- **Membros ↔ Departamentos**  

Todos os relacionamentos utilizam **CASCADE**

---

## Arquivo Principal

O arquivo '1129-script_create_tables.sql' contém todo o código de criação das tabelas e relacionamentos:

- Criação do banco (opcional)
- Criação das tabelas
- Definição das chaves primárias
- Definição das chaves estrangeiras
- Regras de atualização e exclusão

---

## Scripts Secundários (opcionais)

O projeto também pode incluir:

- **INSERTS de exemplo**  
  Para popular membros, endereços, departamentos e ministérios '1129-script_insert_tables.sql'.

- **Consultas úteis (SELECT)**  
  Exemplos de consultas frequentes, no arquivo '1129-script_select_tables.sql':
  - Membros + Endereços
  - Membros mais jovens/mais velhos
  - Membros de um bairro específico

- **UPDATES e DELETES**  
  Scripts prontos para manutenção dos registros no arquivo '1129-script_update-delete_tables.sql'.

---

## Como usar

1. Importe o arquivo SQL no seu banco (MySQL recomendado).
2. Execute o script de criação das tabelas.
3. Preencha com os scripts de inserção (caso disponíveis).
4. Integre com a aplicação ou use para estudos acadêmicos.

---

## Objetivo do Projeto

Este projeto foi criado para fins acadêmicos e estruturais, servindo como base para:

- Sistemas de gestão de comunidades, igrejas ou associações.
- Estudos de modelagem relacional.
- Projetos de disciplina na área de banco de dados.
- Protótipos de aplicações web ou mobile.

---

## Autor

Desenvolvido por **Professor MAU** – educador, pesquisador e apaixonado por tecnologia, educação e fotografia.  
Construído com cuidado, simplicidade e aquele toque de visão que só quem vive o mundo real sabe dar.

---

## Contribuições

Sugestões, melhorias e pull requests são bem-vindos!  
Fique à vontade para colaborar — conhecimento bom é conhecimento compartilhado.

---

## Licença

Este projeto pode ser utilizado livremente para fins educacionais.  
Para uso comercial, consulte as condições da licença escolhida no repositório.
