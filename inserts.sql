/*-5-) Inserts na tabela turma-*/
insert into tbl_turmas(sigla, nome) values 
("3º DS", "Terceiro Módulo Técnico em Desenvolvimento de Sistemas"), 
("3º AUT", "Terceiro ano Novotec em Automação Industrial");


/*-6-) Inserts na tabela alunos-*/
insert into tbl_alunos (cod_turma, nome, cpf, rg, telefone_aluno, telefone_responsavel, email, data_nascimento) values
("1", "Arthur", "12345622911", "123456669", "11987654321", "11029384759", "arthur@gmail.com", "2005-06-17"),
("1", "Giovanna", "91165432199", "195337384", "11375849203", "11546374890", "giovanna@gmail.com", "2004-06-27"),
("1", "Igor", "29385748110", "195768000", "11957483920", "11453647890", "bahia@gmail.com", "2005-02-05"),
("1", "Maria Lívia", "10433847560", "102999477", "11974839405", "11463748390", "mlivia@gmail.com", "2005-01-01"),
("1", "Aurora", "19873546789", "109876110", "11098463789", "11910237640", "aurora@gmail.com", "2005-07-07"),

("2", "Osmar", "19202999999", "101938475", "11992834950", "11938205680", "osmar.brano@gmail.com", "2005-01-09"),
("2", "Pedro", "19475898034", "298101111", "11983758490", "11908790876", "prego@gmail.com", "2005-08-19"),
("2", "Camila", "18465789012", "198764489", "11978786543", "11987890990", "camila.admira@gmail.com.br", "2002-09-15"),
("2", "Andre", "90876545789", "289308789", "11987665467", "11988907657", "andre.marreta@gmail.com.br", "2004-12-12"),
("2", "Gustavo", "19873302234", "909876589", "11989044356", "11912345678", "nego.ney@gmail.com.br", "2005-08-24");


/*-7-) Inserts na tabela disciplinas-*/
insert into tbl_disciplinas(cod_turma, sigla) values 
("1", "BD3"), ("1", "PW3"), ("1", "TCC"), ("1", "DS2"),
("2", "CPDC"), ("2", "CLP"), ("2", "RSS"), ("2", "Micro");