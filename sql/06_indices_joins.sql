-- PARTE 6 - ÍNDICES E JOINs
USE escola_curso;

-- Questão 11: analisa o relacionamento entre aluno e matricula.
EXPLAIN
SELECT a.nome, m.data_matricula, m.situacao
FROM aluno AS a
INNER JOIN matricula AS m
    ON a.id_aluno = m.id_aluno;

-- Questão 12: verifica os índices existentes em matricula.
SHOW INDEX FROM matricula;

-- Observar os campos key e possible_keys no EXPLAIN.
-- Índices nas colunas usadas no relacionamento podem reduzir o trabalho
-- de localizar registros correspondentes durante o JOIN.
-- Confirme os nomes das colunas no esquema do banco antes de executar.
