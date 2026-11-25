-- PARTE 7 - ÍNDICES PARA CONSULTAS FINANCEIRAS
USE escola_curso;

-- Questão 13: analisa mensalidades dentro de um intervalo de vencimento.
EXPLAIN
SELECT *
FROM mensalidade
WHERE data_vencimento BETWEEN '2026-03-01' AND '2026-03-31';

-- Cria índice simples para a data de vencimento.
CREATE INDEX idx_mensalidade_data_vencimento
ON mensalidade(data_vencimento);

-- Repete o EXPLAIN para comparar.
EXPLAIN
SELECT *
FROM mensalidade
WHERE data_vencimento BETWEEN '2026-03-01' AND '2026-03-31';

-- Questão 14: consulta frequente do setor financeiro.
-- O índice começa por situacao (igualdade) e depois data_vencimento
-- (condição de intervalo).
CREATE INDEX idx_mensalidade_situacao_vencimento
ON mensalidade(situacao, data_vencimento);

EXPLAIN
SELECT *
FROM mensalidade
WHERE situacao = 'Vencida'
  AND data_vencimento < CURRENT_DATE();

-- Verifique se já existe índice equivalente antes de criar outro.
