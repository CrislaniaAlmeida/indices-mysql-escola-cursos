-- PARTE 8 - ÍNDICES E ORDER BY
USE escola_curso;

-- Questão 15: verifica o plano de uma consulta com ordenação.
EXPLAIN
SELECT nome
FROM aluno
ORDER BY nome;

-- Um índice pode ajudar tanto em filtros quanto em ordenações,
-- dependendo da estrutura do índice e do plano escolhido pelo otimizador.
-- Observe especialmente o campo Extra (por exemplo, Using filesort).
