#drop database atv3_bd3_Arthur_Ruas;

create database atv3_bd3_Arthur_Ruas;
use atv3_bd3_Arthur_Ruas;

create table tbl_turmas(
cod_turma		int auto_increment,
sigla			varchar(10),
nome			varchar(100),

constraint pk_turma primary key(cod_turma)
);

create table tbl_disciplinas(
cod_disciplina	int auto_increment,
cod_turma		int,
sigla			varchar(50),

constraint pk_disciplina primary key(cod_disciplina)
);

create table tbl_alunos(
cod_aluno				int auto_increment,
cod_turma				int,
nome					varchar(100),
cpf						varchar(11) unique,
rg						varchar(9)  unique,
telefone_aluno			varchar(11),
telefone_responsavel 	varchar(11),
email					varchar(100),
data_nascimento			date,

constraint pk_aluno primary key (cod_aluno)
); 

create table tbl_alunos_backup(
cod_aluno				int auto_increment,
cod_turma				int,
nome					varchar(100),
cpf						varchar(11) unique,
rg						varchar(9)  unique,
telefone_aluno			varchar(11),
telefone_responsavel 	varchar(11),
email					varchar(100),
data_nascimento			date,
data_delete				date,

constraint pk_aluno primary key (cod_aluno)
); 

create table tbl_frequencia(
cod_aluno		int,
cod_disciplina	int,
data_chamada	date,
frequencia		decimal(3,2)
);
