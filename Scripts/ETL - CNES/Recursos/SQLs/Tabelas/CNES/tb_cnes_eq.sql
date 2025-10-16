DROP TABLE IF EXISTS cnes.tb_cnes_eq CASCADE;
CREATE TABLE cnes.tb_cnes_eq (
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
	tipequip varchar(50) NULL,
	codequip varchar(50) NULL,
	qt_exist varchar(50) NULL,
	qt_uso varchar(50) NULL,
	ind_sus varchar(50) NULL,
	ind_nsus varchar(50) NULL,
	competen varchar(50) NULL,
	nat_jur varchar(50) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN cnes.tb_cnes_eq.cnes IS 'Número nacional do estabelecimento de saúde';
COMMENT ON COLUMN cnes.tb_cnes_eq.codufmun IS 'Código do município do estabelecimento UF+ MUNIC (sem dígito)';
COMMENT ON COLUMN cnes.tb_cnes_eq.regsaude IS 'Código da região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_eq.micr_reg IS 'Código da micro-região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_eq.distrsan IS 'Código do distrito sanitário';
COMMENT ON COLUMN cnes.tb_cnes_eq.distradm IS 'Código do distrito administrativo';
COMMENT ON COLUMN cnes.tb_cnes_eq.tpgestao IS 'Gestão de saúde';
COMMENT ON COLUMN cnes.tb_cnes_eq.pf_pj IS 'Indicador de pessoa: 1-Física3-Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_eq.cpf_cnpj IS 'CPF, caso pessoa física OU CNPJ, caso pessoa jurídica';
COMMENT ON COLUMN cnes.tb_cnes_eq.niv_dep IS 'Grau de dependência, onde: 1-Individual 3-Mantida';
COMMENT ON COLUMN cnes.tb_cnes_eq.cnpj_man IS 'CNPJ da mantenedora do Estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_eq.esfera_a IS 'Código da esfera administrativa';
COMMENT ON COLUMN cnes.tb_cnes_eq.atividad IS 'Código da atividade de ensino';
COMMENT ON COLUMN cnes.tb_cnes_eq.retencao IS 'Código de retenção de tributos';
COMMENT ON COLUMN cnes.tb_cnes_eq.natureza IS 'Código da natureza da organização';
COMMENT ON COLUMN cnes.tb_cnes_eq.clientel IS 'Código de fluxo da clientela';
COMMENT ON COLUMN cnes.tb_cnes_eq.tp_unid IS 'Tipo de unidade';
COMMENT ON COLUMN cnes.tb_cnes_eq.turno_at IS 'Código de turno de atendimento';
COMMENT ON COLUMN cnes.tb_cnes_eq.niv_hier IS 'Código do nível de hierarquia';
COMMENT ON COLUMN cnes.tb_cnes_eq.terceiro IS 'O estabelecimento é terceiro: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_eq.tipequip IS 'Código do tipo do equipamento';
COMMENT ON COLUMN cnes.tb_cnes_eq.codequip IS 'Código do equipamento';
COMMENT ON COLUMN cnes.tb_cnes_eq.qt_exist IS 'Quantidade existente do equipamento';
COMMENT ON COLUMN cnes.tb_cnes_eq.qt_uso IS 'Quantidade em uso do equipamento';
COMMENT ON COLUMN cnes.tb_cnes_eq.ind_sus IS 'Indicador de disponibilidade para o SUS, onde: 1 =SIM 0 = NÃO';
COMMENT ON COLUMN cnes.tb_cnes_eq.ind_nsus IS 'Indicador de EQUIPAMENTO NÃO DISPONÍVEL para o SUS, onde: 1 = SIM 0 = NÃO';
COMMENT ON COLUMN cnes.tb_cnes_eq.competen IS 'Ano e Mês de competência da informação (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_eq.nat_jur IS 'Natureza Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_eq.arquivo IS 'Nome do arquivo fonte dos dados.';