/*-Relacionamento da tabelas turma com a tabela disciplinas-*/
alter table tbl_disciplinas add (constraint fk_turma_disciplina foreign key (cod_turma) references tbl_turmas(cod_turma));

/*-Relacionamento da tabelas turma com a tabela alunos-*/
alter table tbl_alunos add (constraint fk_turma_aluno foreign key (cod_turma) references tbl_turmas(cod_turma));

/*-Relacionamento da tabela alunos e disciplina com a tabela frequencias-*/
alter table tbl_frequencia add (
constraint fk_aluno_frequencia foreign key (cod_aluno) references tbl_alunos(cod_aluno),
constraint fk_disciplina_frequencia foreign key (cod_disciplina) references tbl_disciplinas(cod_disciplina));