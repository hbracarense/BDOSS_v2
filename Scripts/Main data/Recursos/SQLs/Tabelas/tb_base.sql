DROP TABLE IF EXISTS principal.tb_base CASCADE;
CREATE TABLE principal.tb_base (
	uf varchar(2) NULL,
	municipio varchar(6) NULL,
	cnes varchar(7) NULL,
	nome_estabelecimento varchar(225) NULL,
	tipo_estabelecimento varchar(3) NULL,
	gestao varchar(1) NULL,
	cnpj varchar(14) NULL,
	tipo_entidade varchar(1) NULL,
	forma_contratacao varchar(1) NULL,
	numero_contrato varchar(300) NULL,
	inicio_vigencia timestamp NULL,
	termino_vigencia timestamp NULL,
	ano_vigencia numeric(4) NULL,
	valor_contrato numeric(14,2) NULL,
	recurso_federal varchar(1) NULL,
	recurso_estadual varchar(1) NULL,
	recurso_municipal varchar(1) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN principal.tb_base.uf IS 'UF da localização do estabelecimento de saúde.';
COMMENT ON COLUMN principal.tb_base.municipio IS 'Município da localidade do estabelecimento de saúde.';
COMMENT ON COLUMN principal.tb_base.cnes IS 'Código do Cadastro Nacional de Estabelecimentos de Saúde.';
COMMENT ON COLUMN principal.tb_base.nome_estabelecimento IS 'Nome do estabelecimento de saúde.';
COMMENT ON COLUMN principal.tb_base.tipo_estabelecimento IS 'Código do tipo de estabelecimento de saúde, conforme CNES.';
COMMENT ON COLUMN principal.tb_base.gestao IS 'Tipo da gestão do estabelecimento de saúde.';
COMMENT ON COLUMN principal.tb_base.cnpj IS 'Código do Cadastro Nacional de Pessoa Jurídica da entidade contratada.';
COMMENT ON COLUMN principal.tb_base.tipo_entidade IS 'Categoria da entidade contratada.';
COMMENT ON COLUMN principal.tb_base.forma_contratacao IS 'Modalidade de celebração do contrato.';
COMMENT ON COLUMN principal.tb_base.numero_contrato IS 'Número do instrumento de contratação';
COMMENT ON COLUMN principal.tb_base.inicio_vigencia IS 'Início da vigência do contrato.';
COMMENT ON COLUMN principal.tb_base.termino_vigencia IS 'Fim da vigência do contrato.';
COMMENT ON COLUMN principal.tb_base.ano_vigencia IS 'Ano de início da vigência do contrato.';
COMMENT ON COLUMN principal.tb_base.valor_contrato IS 'Valor do contrato.';
COMMENT ON COLUMN principal.tb_base.recurso_federal IS 'Recebimento de recurso federal.';
COMMENT ON COLUMN principal.tb_base.recurso_estadual IS 'Recebimento de recursoestadual.';
COMMENT ON COLUMN principal.tb_base.recurso_municipal IS 'Recebimento de recurso municipal.';
COMMENT ON COLUMN principal.tb_base.arquivo IS 'Nome do arquivo fonte dos dados.';