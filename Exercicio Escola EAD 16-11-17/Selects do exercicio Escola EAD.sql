/* 1° Select: Retornar id dos alunos que tiveram nota menor que 6 em 2017 */
select id_aluno from historico where nota <6 and ano = 2017;

/* 2° Select: Retornar id, nome e nota dos alunos que cursaram BDR em 2017 */
select aluno.nome, historico.nota, historico.id_aluno 
from historico, aluno, disciplina
where historico.id_aluno = aluno.id
and historico.id_disciplina = disciplina.id
and historico.ano between "2017/01/01" and "2018/01/01"
and disciplina.descricao = "Banco de Dados Relacional"
group by aluno.nome;

/* 3° Select: Retornar o nome dos professores de BDR em 2017 */
select professor.nome from professor where id_disciplina = 1;

/* 4° Select: Retornar nome e endereço dos alunos que tiveram nota maior que 6 em 2017 */
select aluno.nome, aluno.endereco
from historico, aluno 
where historico.id_aluno = aluno.id
and historico.nota >6;


/* 5° Select: Retornar nome e id dos alunos do professor "Paulo" em 2017 */
select aluno.nome, historico.id_aluno
from aluno,historico
where historico.id_aluno = aluno.id
and historico.id_professor = 1
group by aluno.nome;