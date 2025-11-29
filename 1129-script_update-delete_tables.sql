-- Alterar o telefone do membro
UPDATE tbl_membro
SET membro_telefone = '11988887777'
WHERE id_membro = 3;

-- Alterar o sobrenome do membro
UPDATE tbl_membro
SET membro_sobrenome = 'Ferreira'
WHERE id_membro = 3;

-- Alterar o endereço do membro
UPDATE para alterar o endereço
UPDATE tbl_endereco
SET 
    tipo_logadouro = 'Rua',
    nome_logradouro = 'Nova Esperança',
    numero = '250',
    complemento = 'Apto 12',
    bairro = 'Centro',
    cep = '89030000',
    cidade = 'Blumenau',
    estado = 'SC'
WHERE id_endereco = (
    SELECT id_endereco 
    FROM tbl_membro 
    WHERE id_membro = 3
);

-- Remover o endereço e o membro
DELETE FROM tbl_endereco
WHERE id_endereco IN (
    SELECT id_endereco
    FROM tbl_membro
    WHERE membro_sobrenome = 'Silva'
);

DELETE FROM tbl_membro
WHERE membro_sobrenome = 'Silva';

-- Excluir departamento
DELETE FROM tbl_Departamento
WHERE Departamento_Nome = 'Departamento de Música';

-- Excluir ministério
DELETE FROM tbl_Ministerio
WHERE Ministerio_Nome = 'Ministério de Louvor';
