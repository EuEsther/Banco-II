USE bdEscolaIdiomas

--1-Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem
SELECT nomeAluno, nomeCurso FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codMatricula=tbMatricula.codAluno
INNER JOIN tbTurma ON tbTurma.codCurso=tbTurma.codTurma
INNER JOIN tbCurso ON tbCurso.codCurso=tbCurso.codCurso

--2-Apresentar a quantidade de alunos por nome do curso;
SELECT tbCurso.nomeCurso, COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
GROUP BY tbCurso.nomeCurso;

--3-Apresentar a quantidade de alunos matriculados por nome da turma
SELECT tbTurma.nomeTurma, COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
GROUP BY tbTurma.nomeTurma;

--4-Apresentar a quantidade de alunos que fizeram matr�cula em maio de 2016
SELECT COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
WHERE MONTH(tbMatricula.dataMatricula) = 5 AND YEAR(tbMatricula.dataMatricula) = 2016;

--5-Apresentar o nome dos alunos em ordem alfab�tica ao lado do nome das turmas em que est�o matriculados
SELECT tbAluno.nomeAluno, tbTurma.nomeTurma FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
ORDER BY tbAluno.nomeAluno;

--6-Apresentar o nome dos cursos e os hor�rios que eles s�o oferecidos
SELECT tbCurso.nomeCurso, tbTurma.horarioTurma FROM tbCurso
INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso;

--7-Apresentar a quantidade de alunos nascidos por estado
SELECT tbAluno.naturalidadeAluno, COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
GROUP BY tbAluno.naturalidadeAluno;

--8-Apresentar o nome dos alunos ao lado da data de matr�cula
SELECT tbAluno.naturalidadeAluno, COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
GROUP BY tbAluno.naturalidadeAluno;

--9-Apresentar os alunos cujo nome comece com o A e que estejam matriculados no curso de ingl�s
SELECT tbAluno.nomeAluno FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE tbAluno.nomeAluno LIKE 'A%' AND tbCurso.nomeCurso = 'Ingl�s';

--10-Apresentar a quantidade de matr�culas feitas no ano de 2016
SELECT COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
WHERE YEAR(tbMatricula.dataMatricula) = 2016;