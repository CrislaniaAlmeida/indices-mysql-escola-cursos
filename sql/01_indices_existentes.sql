-- PARTE 1 - CONHECENDO OS ÍNDICES EXISTENTES
USE escola_curso;

-- Questão 1: mostra os índices cadastrados na tabela aluno.
SHOW INDEX FROM aluno;

-- Questão 2: consulta os índices das tabelas relacionadas.
SHOW INDEX FROM matricula;
SHOW INDEX FROM mensalidade;
SHOW INDEX FROM turma;

-- Na análise, observar: Key_name, Column_name, Non_unique e Index_type.
-- Non_unique = 0 indica índice único; Non_unique = 1 permite valores repetidos.
-- A chave primária normalmente aparece com o nome PRIMARY.
