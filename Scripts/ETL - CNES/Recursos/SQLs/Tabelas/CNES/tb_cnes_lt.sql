DROP TABLE IF EXISTS cnes.tb_cnes_lt CASCADE;
CREATE TABLE cnes.tb_cnes_lt (
	cnes varchar(50) NULL,
	codufmun varchar(50) NULL,
	regsaude varchar(50) NULL,
	micr_reg varchar(50) NULL,
	distrsan varchar(50) NULL,
	distradm varchar(50) NULL,
	tpgestao varchar(50) NULL,
	pf_pj varchar(50) NULL,
	cpf_cnpj varchar(50) NULL,
	niv_dep varchar(50) NULL,
	cnpj_man varchar(50) NULL,
	esfera_a varchar(50) NULL,
	atividad varchar(50) NULL,
	retencao varchar(50) NULL,
	natureza varchar(50) NULL,
	clientel varchar(50) NULL,
	tp_unid varchar(50) NULL,
	turno_at varchar(50) NULL,
	niv_hier varchar(50) NULL,
	terceiro varchar(50) NULL,
	tp_leito varchar(50) NULL,
	codleito varchar(50) NULL,
	qt_exist numeric(50) NULL,
	qt_contr numeric(50) NULL,
	qt_sus numeric(50) NULL,
	qt_nsus numeric(50) NULL,
	competen varchar(50) NULL,
	nat_jur varchar(50) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN cnes.tb_cnes_lt.cnes IS 'Número nacional do estabelecimento de saúde';
COMMENT ON COLUMN cnes.tb_cnes_lt.codufmun IS 'Código do município do estabelecimento UF+ MUNIC (sem dígito)';
COMMENT ON COLUMN cnes.tb_cnes_lt.regsaude IS 'Código da região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_lt.micr_reg IS 'Código da micro-região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_lt.distrsan IS 'Código do distrito sanitário';
COMMENT ON COLUMN cnes.tb_cnes_lt.distradm IS 'Código do distrito administrativo';
COMMENT ON COLUMN cnes.tb_cnes_lt.tpgestao IS 'Gestão de saúde';
COMMENT ON COLUMN cnes.tb_cnes_lt.pf_pj IS 'Indicador de pessoa: 1-Física 3-Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_lt.cpf_cnpj IS 'CPF do Estabelecimento, caso pessoa física OU CNPJ, caso pessoa jurídica';
COMMENT ON COLUMN cnes.tb_cnes_lt.niv_dep IS 'Grau de dependência: 1-Individual 3-Mantida';
COMMENT ON COLUMN cnes.tb_cnes_lt.cnpj_man IS 'CNPJ da mantenedora do Estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_lt.esfera_a IS 'Código da esfera administrativa';
COMMENT ON COLUMN cnes.tb_cnes_lt.atividad IS 'Código da atividade de ensino';
COMMENT ON COLUMN cnes.tb_cnes_lt.retencao IS 'Código de retenção de tributos';
COMMENT ON COLUMN cnes.tb_cnes_lt.natureza IS 'Código da natureza da organização';
COMMENT ON COLUMN cnes.tb_cnes_lt.clientel IS 'Código de fluxo da clientela';
COMMENT ON COLUMN cnes.tb_cnes_lt.tp_unid IS 'Tipo de unidade (Estabelecimento)';
COMMENT ON COLUMN cnes.tb_cnes_lt.turno_at IS 'Código de turno de atendimento';
COMMENT ON COLUMN cnes.tb_cnes_lt.niv_hier IS 'Código do nível de hierarquia';
COMMENT ON COLUMN cnes.tb_cnes_lt.terceiro IS 'O estabelecimento é terceiro: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_lt.tp_leito IS 'Tipo do LEITO';
COMMENT ON COLUMN cnes.tb_cnes_lt.codleito IS 'Especialidade do LEITO';
COMMENT ON COLUMN cnes.tb_cnes_lt.qt_exist IS 'Quantidade de leitos existentes';
COMMENT ON COLUMN cnes.tb_cnes_lt.qt_contr IS 'Quantidade de leitos contratados';
COMMENT ON COLUMN cnes.tb_cnes_lt.qt_sus IS 'Quantidade de leitos para o SUS';
COMMENT ON COLUMN cnes.tb_cnes_lt.qt_nsus IS 'Quantidade de leitos fora do SUS';
COMMENT ON COLUMN cnes.tb_cnes_lt.competen IS 'Ano e Mês de competência da informação (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_lt.nat_jur IS 'Natureza Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_lt.arquivo IS 'Nome do arquivo fonte dos dados.';