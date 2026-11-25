-- PARTE 4 - ÍNDICES E SELETIVIDADE
USE escola_curso;

-- Questão 7: analisa a consulta antes da criação do índice.
EXPLAIN
SELECT *
FROM aluno
WHERE situacao = 'Ativo';

-- Cria o índice para a coluna situacao.
CREATE INDEX idx_aluno_situacao
ON aluno(situacao);

-- Analisa novamente e compara key, rows, type e Extra.
EXPLAIN
SELECT *
FROM aluno
WHERE situacao = 'Ativo';

-- Questão 8: compare os índices de nome, cidade e situacao.
-- Uma coluna com muitos valores distintos tende a ter maior seletividade.
-- Uma coluna com poucos valores repetidos, como uma situação, tende a
-- apresentar menor seletividade. A distribuição real dos dados importa.
