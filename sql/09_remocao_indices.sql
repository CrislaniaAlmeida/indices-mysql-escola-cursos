-- PARTE 9 - REMOVENDO ÍNDICES
USE escola_curso;

-- Questão 16: confira os índices antes de remover.
SHOW INDEX FROM aluno;

-- Exemplo: remove o índice de cidade.
-- Execute esta linha somente se idx_aluno_cidade existir.
DROP INDEX idx_aluno_cidade
ON aluno;

-- Confirma quais índices permanecem.
SHOW INDEX FROM aluno;

-- Questão 17: compara novamente a consulta que filtrava pela cidade.
EXPLAIN
SELECT *
FROM aluno
WHERE cidade = 'Fortaleza';

-- Compare com o EXPLAIN obtido antes da remoção.
