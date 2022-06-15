
 ALTER TABLE departamento
    CHANGE nome_departamento nome_departamento CHAR(25) NOT NULL;


ALTER TABLE professor 
    CHANGE nome nome_professor CHAR(20) NOT NULL,
    CHANGE sobrenome_professor sobrenome_professor CHAR(50) NOT NULL;
    

ALTER TABLE  disciplina 
	CHANGE carga_horaria carga_horaria INT(4) NOT NULL,
    CHANGE numero_alunos num_alunos INT(4) NOT NULL,
    CHANGE fk_cod_departamento fk_cod_departamento INT(4) NOT NULL;


ALTER TABLE turma 
	ADD periodo CHAR(8) AFTER cod_turma;
    
    
ALTER TABLE turma
	ADD num_alunos INT(4) AFTER periodo;
    

ALTER TABLE endereco 
    CHANGE nome_rua nome_rua CHAR(50) NOT NULL,
    CHANGE numero_rua numero_rua INT(4) NOT NULL,
    CHANGE complemento complemento CHAR(20) NULL,
    CHANGE CEP CEP CHAR(8) NOT NULL,
    CHANGE fk_cod_tipo_logradouro fk_tipo_logradouro INT(4) NOT NULL;
    
    
ALTER TABLE telefone_aluno
    CHANGE fk_RA fk_RA INT(4) NOT NULL,
    CHANGE fk_cod_telefone fk_cod_telefone INT(4) NOT NULL;
    
    
ALTER TABLE historico
    CHANGE fk_RA fk_RA INT(4) NOT NULL;
    
    
ALTER TABLE disciplina_historico
	CHANGE fk_cod_historico  fk_cod_historico INT(4) NOT NULL,
    CHANGE fk_cod_disciplina fk_cod_disciplina INT(4) NOT NULL;
    
    
ALTER TABLE aluno_disciplina
	CHANGE fk_RA fk_RA INT(4) NOT NULL,
    CHANGE fk_cod_disciplina fk_cod_disciplina INT(4) NOT NULL;


ALTER TABLE curso
	ADD  fk_cod_departamento INT(4),
    ADD FOREIGN KEY(fk_cod_departamento) REFERENCES departamento (cod_departamento);
    
    
ALTER TABLE endereco
	CHANGE fk_tipo_logradouro fk_cod_tipo_logradouro INT(4);
    
    
ALTER TABLE tipo_telefone 
	CHANGE tipo_telefone tipo_telefone CHAR(9);
    
