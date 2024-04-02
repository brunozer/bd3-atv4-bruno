DELIMITER $

CREATE PROCEDURE ContarAlunos()
BEGIN
    DECLARE total_alunos INT;
    
    SELECT COUNT(*) INTO total_alunos FROM tbl_alunos;
    
    SELECT total_alunos AS 'Total de Alunos';
END

$

CALL ContarAlunos();

