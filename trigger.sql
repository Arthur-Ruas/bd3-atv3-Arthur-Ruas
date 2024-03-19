#drop trigger trg_delete_aluno;

#Criação do trigger
delimiter $ 
	create trigger trg_delete_aluno before delete on tbl_alunos
	for each row
	begin
		insert into tbl_alunos_backup
		set
			cod_aluno = old.cod_aluno,			 	
			cod_turma = old.cod_turma,			
			nome = old.nome,				
			cpf = old.cpf,				
			rg = old.rg,		
			telefone_aluno = old.telefone_aluno,
			telefone_responsavel = old.telefone_responsavel,
			email = old.email,
			data_nascimento = old.data_nascimento,
            data_delete = now();
	end
$

delete from tbl_alunos where cod_aluno = 4;

select * from tbl_alunos;
select * from tbl_alunos_backup;
