create database Fundatec;
use Fundatec;

create table aluno(
	id int not null,
    nome varchar(35),
    cpf char (11) not null,
    data_nascimento date not null,
    endereco varchar (50),

primary key (id)
);

insert into aluno(id, nome, cpf, data_nascimento, endereco)
	values(1, "Arthur", 11111111111, "1996/12/12", "Rua A"),
    (2, "Dromcar", 22222222222, "1998/5/5", "Rua B"),
    (3, "Ragnaros", 33333333333, "1440/4/3", "Rua C"),
    (4, "Arthas", 44444444444, "1990/7/12", "Rua D");

create table disciplina(
	id int not null,
    descricao varchar (50) not null,
    carga_horaria int not null,

primary key(id)
);

insert into disciplina(id, descricao, carga_horaria)
	values(1,"Banco de Dados Relacional", 20);

create table professor(
	id int not null,
    nome varchar (35) not null,
    endereco varchar (50) not null,
    id_disciplina int not null,
    
primary key (id),
foreign key (id_disciplina) references disciplina(id)
);

insert into professor(id, nome, endereco, id_disciplina)
	values (1, "Paulo", "Rua D", 1),
     (2, "Fulano", "Rua J", 1);

create table turma(
	id int not null,
    apelido varchar(30) not null,
    ano int not null,
    turno varchar(15) not null,
    id_professor int not null,

primary key(id),
foreign key(id_professor) references professor(id)
);

insert into turma(id, apelido, ano, turno, id_professor)
	value(1, "Ti11", 2017, "noite", 1),
    (2, "Ti10", 2017, "noite", 1),
    (3, "Ti9", 2017, "noite", 2);
    

create table historico(
	id_aluno int not null,
    id_disciplina int not null,
    id_turma int not null,
    id_professor int not null,
    ano int not null,
    frequencia char (15) not null,
    nota int not null,

foreign key (id_aluno) references aluno (id),
foreign key (id_disciplina) references disciplina (id),
foreign key (id_turma) references turma (id),
foreign key (id_professor) references professor (id)
);

insert into historico(id_aluno, id_disciplina, id_turma, id_professor, ano, frequencia, nota)
	value(1,1,1,1, 2017, "Alta", 9),
    (2,1,1,1, 2017, "Media", 7),
    (3,1,2,1, 2017, "Baixa", 5),
    (4,1,3,2, 2017, "Alta", 8);


