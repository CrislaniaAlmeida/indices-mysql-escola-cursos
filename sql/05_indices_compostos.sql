-- PARTE 5 - ÍNDICES COMPOSTOS
USE escola_curso;

-- Questão 9: plano inicial da consulta com dois filtros.
EXPLAIN
SELECT *
FROM aluno
WHERE cidade = 'Fortaleza'
  AND situacao = 'Ativo';

-- Índice composto: cidade é a primeira coluna e situacao é a segunda.
CREATE INDEX idx_aluno_cidade_situacao
ON aluno(cidade, situacao);

-- Plano após a criação do índice.
EXPLAIN
SELECT *
FROM aluno
WHERE cidade = 'Fortaleza'
  AND situacao = 'Ativo';

-- Questão 10: testa o uso da primeira coluna isoladamente.
EXPLAIN
SELECT *
FROM aluno
WHERE cidade = 'Fortaleza';

-- Testa somente a segunda coluna.
EXPLAIN
SELECT *
FROM aluno
WHERE situacao = 'Ativo';

-- O índice composto segue a regra do prefixo à esquerda:
-- a primeira coluna costuma ser essencial para aproveitar o índice.
