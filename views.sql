/*-8-) View da tabela alunos com inner join da tabela turmas-*/
create view listagem_alunos_turmas as 
select 
ta.nome as aluno, ta.telefone_aluno, ta.telefone_responsavel, ta.email,
tt.sigla, tt.nome as turma
from tbl_alunos as ta
inner join tbl_turmas as tt on tt.cod_turma = ta.cod_turma;

select * from listagem_alunos_turmas;


/*-9-) View da tabela disciplinas com inner join da tabela turmas-*/
create view listagem_disciplinas_turmas as 
select 
td.sigla,
tt.sigla turma, tt.nome
from tbl_disciplinas as td
inner join tbl_turmas as tt on tt.cod_turma = td.cod_turma;

select * from listagem_disciplinas_turmas;


/*-10-) View geral de todas as tabelas-*/
create view listagem_completa as
select
ta.nome as aluno, ta.telefone_aluno, telefone_responsavel, ta.email,
tt.sigla, tt.nome as turma,
td.sigla as disciplina
from tbl_alunos as ta
inner join tbl_turmas as tt on tt.cod_turma = ta.cod_turma
inner join tbl_disciplinas as td on td.cod_turma = ta.cod_turma;

select * from listagem_completa;