-- Criação da tabela de clientes
CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- Criação da tabela de agendamentos
CREATE TABLE agendamentos (
    id_agendamento INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    data_agendamento DATE NOT NULL,
    hora_agendamento TIME NOT NULL,
    status VARCHAR(20) DEFAULT 'pendente',
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Inserção de dados em clientes
INSERT INTO clientes (id_cliente, nome, telefone) VALUES
(1, 'João da Silva', '67999990001'),
(2, 'Maria Oliveira', '67999990002'),
(3, 'Carlos Souza', '67999990003');

-- Inserção de dados em agendamentos
INSERT INTO agendamentos (id_agendamento, id_cliente, data_agendamento, hora_agendamento, status) VALUES
(1, 1, '2025-06-10', '14:00', 'confirmado'),
(2, 2, '2025-06-11', '15:00', 'pendente'),
(3, 3, '2025-06-12', '16:00', 'pendente');

-- Atualização de status de agendamento
UPDATE agendamentos SET status = 'confirmado' WHERE id_agendamento = 2;

-- Remoção de um agendamento
DELETE FROM agendamentos WHERE id_agendamento = 3;

-- Consultas básicas
-- Listar todos os agendamentos com nome do cliente
SELECT a.id_agendamento, c.nome, a.data_agendamento, a.hora_agendamento, a.status
FROM agendamentos a
JOIN clientes c ON a.id_cliente = c.id_cliente;

-- Listar agendamentos pendentes
SELECT * FROM agendamentos WHERE status = 'pendente';