-- PARTE 2 - INVESTIGANDO CONSULTAS COM EXPLAIN
USE escola_curso;

-- Questão 3: substitua pelo nome de um aluno que exista na tabela.
EXPLAIN
SELECT *
FROM aluno
WHERE nome = 'NOME DE ALUNO EXISTENTE';

-- Questão 4: busca alunos de Fortaleza.
EXPLAIN
SELECT *
FROM aluno
WHERE cidade = 'Fortaleza';

-- Registrar principalmente: type, possible_keys, key, rows e Extra.
-- Faça a análise com os dados reais do seu banco.
