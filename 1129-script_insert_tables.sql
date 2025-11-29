-- Inserir cinco departamentos
INSERT INTO tbl_Departamento (
    Departamento_Nome,
    Departamento_Descrição
) VALUES
('Departamento de Música', 'Responsável pelo louvor, coral, ensaios e organização musical dos cultos e eventos.'),
('Departamento Infantil', 'Coordena atividades com crianças, incluindo ensino, recreação e cuidados durante cultos e eventos.'),
('Departamento de Comunicação', 'Gerencia redes sociais, mídia, fotografia, transmissões e divulgação institucional.'),
('Departamento de Ação Social', 'Realiza projetos de apoio comunitário, doações, visitas e campanhas de solidariedade.'),
('Departamento de Eventos', 'Organiza a logística, planejamento e execução dos eventos internos e externos da instituição.');

-- Inserir cinco ministérios
INSERT INTO tbl_Ministerio (
    Ministerio_Nome,
    Ministerio_Descrição
) VALUES
('Ministério de Louvor', 'Equipe responsável pela condução musical dos cultos, ensaios e apresentações especiais.'),
('Ministério de Ensino', 'Coordena estudos bíblicos, classes de formação e atividades de ensino cristão.'),
('Ministério de Intercessão', 'Grupo dedicado à oração, acompanhamento espiritual e suporte em momentos de necessidade.'),
('Ministério de Recepção', 'Responsável pelo acolhimento, recepção e orientação dos visitantes e membros nos cultos.'),
('Ministério de Jovens', 'Desenvolve atividades, eventos e estudos específicos para o público jovem da comunidade.');

-- Inserir dez endereços
INSERT INTO tbl_endereco (
    tipo_logadouro,
    nome_logradouro,
    numero,
    complemento,
    bairro,
    cep,
    cidade,
    estado
) VALUES
('Rua', 'Floriano Peixoto', '123', 'Apto 201', 'Centro', '89010000', 'Blumenau', 'SC'),
('Avenida', 'Brasil', '450', 'Casa', 'Jardim América', '13050000', 'Campinas', 'SP'),
('Rua', 'Sete de Setembro', '89', 'Fundos', 'Boa Vista', '69055000', 'Manaus', 'AM'),
('Travessa', 'Ipiranga', '22', '', 'Santana', '91530000', 'Porto Alegre', 'RS'),
('Rua', 'Dom Pedro II', '310', 'Bloco B', 'São José', '72020000', 'Brasília', 'DF'),
('Avenida', 'Getúlio Vargas', '980', 'Sala 5', 'Centro', '90430000', 'Porto Alegre', 'RS'),
('Rua', 'Projetada A', '42', '', 'Santa Luzia', '64001000', 'Teresina', 'PI'),
('Rua', 'Monte Belo', '1020', 'Casa 03', 'Monte Verde', '36035000', 'Juiz de Fora', 'MG'),
('Rua', 'Das Flores', '55', 'Apto 402', 'Jardins', '01420000', 'São Paulo', 'SP'),
('Avenida', 'Beira Mar', '2870', 'Cobertura', 'Praia do Futuro', '60182000', 'Fortaleza', 'CE');

-- Inserir dez membros
INSERT INTO tbl_membro (
    membro_nome,
    membro_sobrenome,
    membro_datanascimento,
    membro_rg,
    membro_cpf,
    id_endereco,
    membro_telefone
) VALUES
('Carlos', 'Silva', '1985-03-12', '123456789', '12345678901', 1, '47988880001'),
('Mariana', 'Oliveira', '1990-07-25', '987654321', '98765432100', 2, '19998887766'),
('João', 'Santos', '1978-11-04', '456123789', '45612378911', 3, '92999998888'),
('Patrícia', 'Souza', '1988-02-18', '321654987', '32165498722', 4, '51977776666'),
('Ricardo', 'Pereira', '1995-09-30', '741852963', '74185296355', 5, '61999994444'),
('Fernanda', 'Dias', '1982-05-11', '159753486', '15975348699', 6, '51988885555'),
('Luciano', 'Moraes', '1974-08-22', '852369741', '85236974177', 7, '86999997777'),
('Aline', 'Carvalho', '1998-10-09', '963258741', '96325874133', 8, '32999996666'),
('Eduardo', 'Martins', '1986-06-15', '258147369', '25814736944', 9, '11999995555'),
('Renata', 'Alves', '1993-12-01', '654987123', '65498712388', 10, '85999990000');
