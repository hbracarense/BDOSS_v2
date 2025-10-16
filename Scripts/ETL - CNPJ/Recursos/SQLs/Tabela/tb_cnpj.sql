DROP TABLE IF EXISTS cnpj.tb_cnpj CASCADE;
CREATE TABLE cnpj.tb_cnpj (
	cnpj varchar(50) NULL,
	tipo varchar(50) NULL,
	abertura timestamp NULL,
	nome varchar(200) NULL,
	fantasia varchar(200) NULL,
	natureza_juridica varchar(200) NULL,
	logradouro varchar(300) NULL,
	numero varchar(10) NULL,
	complemento varchar(300) NULL,
	cep varchar(10) NULL,
	bairro varchar(300) NULL,
	municipio varchar(300) NULL,
	uf varchar(100) NULL,
	email varchar(300) NULL,
	telefone varchar(50) NULL,
	efr varchar(100) NULL,
	situacao varchar(100) NULL,
	data_situacao varchar(30) NULL,
	motivo_situacao varchar(100) NULL,
	situacao_especial varchar(100) NULL,
	data_situacao_especial varchar(30) NULL,
	capital_social varchar(50) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN cnpj.tb_cnpj.cnpj IS 'Código único do Cadastro Nacional de Pessoas Jurídicas.';
COMMENT ON COLUMN cnpj.tb_cnpj.tipo IS 'Tipo do CNPJ';
COMMENT ON COLUMN cnpj.tb_cnpj.abertura IS 'Data de abertura do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.nome IS 'Razão Social do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.fantasia IS 'Nome fantasia do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.natureza_juridica IS 'Natureza jurídica do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.logradouro IS 'Endereço do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.numero IS 'Número do endereço do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.complemento IS 'Complemento ao endereço do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.cep IS 'Código de Endereçamento Postal do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.bairro IS 'Bairro do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.municipio IS 'Município do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.uf IS 'UF do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.email IS 'E-mail do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.telefone IS 'Telefone do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.efr IS 'Ente Federativo Responsável.';
COMMENT ON COLUMN cnpj.tb_cnpj.situacao IS 'Situação Cadastral do CNPJ.';
COMMENT ON COLUMN cnpj.tb_cnpj.data_situacao IS 'Data da alteração de situação.';
COMMENT ON COLUMN cnpj.tb_cnpj.motivo_situacao IS 'Motivo da alteração de situação.';
COMMENT ON COLUMN cnpj.tb_cnpj.situacao_especial IS 'Situação especial.';
COMMENT ON COLUMN cnpj.tb_cnpj.data_situacao_especial IS 'Data da asituação especial.';
COMMENT ON COLUMN cnpj.tb_cnpj.capital_social IS 'Capital social do CNPJ, em reais.';
COMMENT ON COLUMN cnpj.tb_cnpj.arquivo IS 'Nome do arquivo fonte dos dados.';