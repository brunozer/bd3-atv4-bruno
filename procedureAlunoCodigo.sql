DELIMITER $

CREATE PROCEDURE AlunoCodigo(
    IN aluno_codigo INT
)
BEGIN
    SELECT t.sigla AS 'Sigla Turma', t.nome AS 'Nome Turma',
           a.nome AS 'Nome Aluno', a.telefone_aluno AS 'Telefone Aluno',
           a.telefone_responsavel AS 'Telefone Responsável', a.email AS 'Email',
           a.data_nascimento AS 'Data de Nascimento'
    FROM tbl_turma t
    INNER JOIN tbl_alunos a ON t.cod_turma = a.cod_turma
    WHERE a.cod_aluno = aluno_codigo;
END

$
CALL AlunoCodigo(2);




