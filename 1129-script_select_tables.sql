-- Selecionar os três membro mais velhos
SELECT *
FROM tbl_membro
ORDER BY membro_datanascimento ASC
LIMIT 3;

-- Selecionar os três membro mais novos
SELECT *
FROM tbl_membro
ORDER BY membro_datanascimento DESC
LIMIT 3;

-- Selecionar membro e organizar pelo endereço
SELECT
    CONCAT(m.membro_nome, ' ', m.membro_sobrenome) AS nome_completo,
    e.tipo_logadouro,
    e.nome_logradouro,
    e.numero,
    e.complemento,
    e.bairro,
    e.cep,
    e.cidade,
    e.estado
FROM tbl_membro m
INNER JOIN tbl_endereco e
    ON m.id_endereco = e.id_endereco
ORDER BY 
    e.nome_logradouro ASC;

-- Selecionar membro que moram no bairro Centro
SELECT
    CONCAT(m.membro_nome, ' ', m.membro_sobrenome) AS nome_completo,
    e.tipo_logadouro,
    e.nome_logradouro,
    e.numero,
    e.complemento,
    e.bairro,
    e.cep,
    e.cidade,
    e.estado
FROM tbl_membro m
INNER JOIN tbl_endereco e
    ON m.id_endereco = e.id_endereco
WHERE e.bairro = 'Centro'
ORDER BY 
    e.nome_logradouro ASC;
