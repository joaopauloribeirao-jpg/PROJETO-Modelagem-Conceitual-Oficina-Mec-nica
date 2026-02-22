# PROJETO-Modelagem-Conceitual-Oficina-Mec-nica

## 🔧 Sistema de Controle de Oficina Mecânica

### 📖 Descrição

Projeto conceitual desenvolvido para modelar um sistema de controle e gerenciamento de Ordens de Serviço (OS) em uma oficina mecânica.

A modelagem foi construída a partir da narrativa proposta no desafio, identificando entidades, atributos e relacionamentos necessários para representar o domínio do problema.

### 🎯 Objetivo

Criar o esquema conceitual completo do sistema de oficina mecânica, considerando:

Clientes e seus veículos

Equipes de mecânicos

Ordens de Serviço

Serviços executados

Peças utilizadas

Cálculo de valores

Controle de status da OS

### 🧠 Decisões de Modelagem

Alguns pontos não estavam explicitamente definidos na narrativa e foram modelados com base em boas práticas:

Criação da entidade Equipe separada de Mecânico

Uso de entidades associativas para representar serviços e peças por OS

Inclusão do campo de autorização do cliente

Definição de status estruturado para controle do fluxo da OS

### 🗂 Principais Entidades

Cliente
Veículo
Ordem de Serviço
Equipe
Mecânico
Serviço
Peça

### 📌 Regras de Negócio

Um cliente pode possuir vários veículos.

Um veículo pode gerar várias ordens de serviço.

Uma equipe executa uma ou mais OS.

Mecânicos podem participar de várias equipes.

Uma OS pode conter vários serviços e várias peças.

O valor total da OS é composto por mão-de-obra e peças.
