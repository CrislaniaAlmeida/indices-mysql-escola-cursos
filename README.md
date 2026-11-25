# Índices no MySQL - Escola de Cursos

Neste projeto, pratiquei a administração e a otimização de consultas em um banco de dados MySQL chamado `escola_curso`. A atividade faz parte da disciplina **Administração em Banco de Dados: Otimização e Segurança**, do curso de Engenharia de Software e ADS.

## Objetivos

- Consultar os índices existentes nas tabelas.
- Analisar consultas com `EXPLAIN`.
- Criar e remover índices simples e compostos.
- Compreender seletividade e a ordem das colunas em índices compostos.
- Observar índices utilizados em relacionamentos (`JOIN`), filtros, intervalos de datas e ordenações.
- Comparar os planos de execução antes e depois da indexação.

## Organização

Os comandos estão separados por etapa da atividade:

| Arquivo | Conteúdo |
|---|---|
| `sql/01_indices_existentes.sql` | Inspeção dos índices |
| `sql/02_explain_consultas.sql` | Consultas iniciais com EXPLAIN |
| `sql/03_indices_simples.sql` | Índices para nome e cidade |
| `sql/04_seletividade.sql` | Índice de situação e seletividade |
| `sql/05_indices_compostos.sql` | Índices compostos e ordem das colunas |
| `sql/06_indices_joins.sql` | Índices e relacionamentos |
| `sql/07_indices_financeiros.sql` | Consultas de mensalidades |
| `sql/08_order_by.sql` | Ordenação com ORDER BY |
| `sql/09_remocao_indices.sql` | Remoção e comparação de índices |
| `sql/10_desafio_dba.sql` | Desafio de análise e otimização |

## Como executar

1. Abra o MySQL Workbench e conecte-se ao servidor.
2. Selecione o banco utilizado nas aulas: `escola_curso`.
3. Abra e execute os arquivos da pasta `sql` na ordem indicada.
4. Confira os nomes das tabelas e colunas no seu banco. Se a estrutura tiver nomes diferentes, ajuste os comandos antes de executar.
5. Registre os resultados reais do `SHOW INDEX` e do `EXPLAIN` para comparar os planos.

> **Importante:** os resultados de `EXPLAIN` dependem da quantidade e da distribuição dos dados, das estatísticas e da versão/configuração do MySQL. Criar um índice não garante que o otimizador irá utilizá-lo. Por isso, os arquivos contêm os comandos de teste, mas não afirmam valores de `rows`, `key` ou `type` que ainda não foram observados na execução.

## Evidências

Os prints reais das execuções devem ser adicionados à pasta `evidencias/`, identificados pela questão correspondente. Imagens ilustrativas, se utilizadas, devem ser marcadas como demonstração e não como evidência de execução.

## Aprendizados

Ao longo da atividade, estou praticando como avaliar o custo estimado das consultas e como escolher índices de acordo com os filtros e relacionamentos mais frequentes. Também estou observando que índices ocupam espaço e precisam ser atualizados nas operações de inclusão, alteração e exclusão, então não é adequado criar índices indiscriminadamente.

---
**Disciplina:** Administração em Banco de Dados: Otimização e Segurança  
**Curso:** Engenharia de Software e ADS  
**Professor:** Niltemberg Carvalho  
**Banco de dados:** escola_curso
