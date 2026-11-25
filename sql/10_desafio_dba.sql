-- PARTE 10 - DESAFIO: VOCÊ É O DBA
USE escola_curso;

-- Questão 18 - Consulta A: pesquisa por nome.
EXPLAIN
SELECT *
FROM aluno
WHERE nome = 'NOME DE ALUNO EXISTENTE';

-- Índice proposto para a consulta A.
CREATE INDEX idx_aluno_nome
ON aluno(nome);

-- Questão 18 - Consulta B: mensalidades vencidas por data.
EXPLAIN
SELECT *
FROM mensalidade
WHERE situacao = 'Vencida'
  AND data_vencimento < CURRENT_DATE();

-- Índice composto proposto para a consulta B.
CREATE INDEX idx_mensalidade_situacao_vencimento
ON mensalidade(situacao, data_vencimento);

-- Questão 18 - Consulta C: matrículas por turma.
EXPLAIN
SELECT *
FROM matricula
WHERE id_turma = 1; -- substitua pelo identificador desejado

-- Índice proposto para a consulta C.
CREATE INDEX idx_matricula_id_turma
ON matricula(id_turma);

-- Questão 19: reflexão registrada no README.
-- Não é recomendado indexar todas as colunas. Índices consomem espaço
-- e aumentam o custo de INSERT, UPDATE e DELETE, pois precisam ser mantidos.
-- Devem ser criados conforme consultas, filtros, JOINs e ordenações reais.

-- Questão 20: modelo de análise com duas tabelas.
-- Este exemplo utiliza aluno e matricula; confirme os nomes das colunas.
EXPLAIN
SELECT a.nome, m.data_matricula, m.situacao
FROM aluno AS a
INNER JOIN matricula AS m
    ON a.id_aluno = m.id_aluno;

-- Verifique os índices existentes em matricula antes de criar outro.
SHOW INDEX FROM matricula;

-- Se id_aluno ainda não tiver índice em matricula, pode-se avaliar:
-- CREATE INDEX idx_matricula_id_aluno ON matricula(id_aluno);
-- Depois, execute novamente o EXPLAIN e compare os planos.
