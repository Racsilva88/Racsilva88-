# Banco de Dados - Agenda Solidária (Espaço Van)

Este repositório contém a modelagem e os scripts SQL do banco de dados utilizado no projeto de extensão "Agenda Solidária", desenvolvido como parte das atividades do curso de Tecnologia da Informação da UFMS Digital.

## 📌 Objetivo

O banco de dados foi projetado para armazenar informações de clientes e seus respectivos agendamentos de cortes gratuitos no estabelecimento Espaço Van.

## 🗃️ Estrutura

- **clientes**: tabela para cadastro dos clientes (nome, telefone).
- **agendamentos**: tabela com data, hora, status do corte e relação com o cliente.

## 📄 Script SQL

O arquivo `agenda_barbeiro.sql` inclui:

- Criação das tabelas com relacionamentos;
- Inserções de dados simulando clientes e agendamentos;
- Atualizações e remoções de registros;
- Consultas SQL para relatórios básicos.

## 💡 Observações

Este banco de dados ainda não está integrado com a aplicação web, mas representa a estrutura que seria utilizada para persistência de dados em uma futura versão dinâmica do sistema.

## 🔗 Desenvolvido por

Rafael Carlos da Silva  
Projeto Integrador de Tecnologia da Informação II - UFMS Digital
