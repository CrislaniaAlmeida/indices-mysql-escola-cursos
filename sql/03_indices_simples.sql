-- PARTE 3 - CRIANDO ÍNDICES SIMPLES
USE escola_curso;

-- Questão 5: cria um índice para pesquisas pelo nome do aluno.
CREATE INDEX idx_aluno_nome
ON aluno(nome);

-- Repita a consulta da questão 3 para comparar o plano.
EXPLAIN
SELECT *
FROM aluno
WHERE nome = 'NOME DE ALUNO EXISTENTE';

-- Questão 6: cria um índice para pesquisas pela cidade.
CREATE INDEX idx_aluno_cidade
ON aluno(cidade);

-- Repita a consulta da questão 4.
EXPLAIN
SELECT *
FROM aluno
WHERE cidade = 'Fortaleza';

-- O otimizador decide se o índice compensa. A existência do índice
-- não obriga o MySQL a utilizá-lo.
