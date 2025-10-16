DROP TABLE IF EXISTS cnes.tb_cnes_ee CASCADE;
CREATE TABLE cnes.tb_cnes_ee (
	cnes varchar(7) NULL,
	codufmun varchar(6) NULL,
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
	cod_cep varchar(50) NULL,
	vinc_sus varchar(50) NULL,
	tp_prest varchar(50) NULL,
	sgruphab varchar(50) NULL,
	cmpt_ini varchar(50) NULL,
	cmpt_fim varchar(50) NULL,
	dtportar varchar(50) NULL,
	portaria varchar(500) NULL,
	maportar varchar(50) NULL,
	competen varchar(50) NULL,
	nat_jur varchar(50) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN cnes.tb_cnes_ee.cnes IS 'Número nacional do estabelecimento de saúde';
COMMENT ON COLUMN cnes.tb_cnes_ee.codufmun IS 'Código do município do estabelecimento UF+ MUNIC (sem dígito)';
COMMENT ON COLUMN cnes.tb_cnes_ee.regsaude IS 'Código da região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_ee.micr_reg IS 'Código da micro-região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_ee.distrsan IS 'Código do distrito sanitário';
COMMENT ON COLUMN cnes.tb_cnes_ee.distradm IS 'Código do distrito administrativo';
COMMENT ON COLUMN cnes.tb_cnes_ee.tpgestao IS 'Gestão de saúde';
COMMENT ON COLUMN cnes.tb_cnes_ee.pf_pj IS 'Indicador de pessoa: 1-Física 3-Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_ee.cpf_cnpj IS 'CPF do Estabelecimento, caso pessoa física OU CNPJ, caso pessoa jurídica';
COMMENT ON COLUMN cnes.tb_cnes_ee.niv_dep IS 'Grau de dependência: 1-Individual 3-Mantida';
COMMENT ON COLUMN cnes.tb_cnes_ee.cnpj_man IS 'CNPJ da mantenedora do Estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_ee.esfera_a IS 'Código da esfera administrativa';
COMMENT ON COLUMN cnes.tb_cnes_ee.atividad IS 'Código da atividade de ensino';
COMMENT ON COLUMN cnes.tb_cnes_ee.retencao IS 'Código de retenção de tributos';
COMMENT ON COLUMN cnes.tb_cnes_ee.natureza IS 'Código da natureza da organização';
COMMENT ON COLUMN cnes.tb_cnes_ee.clientel IS 'Código de fluxo da clientela';
COMMENT ON COLUMN cnes.tb_cnes_ee.tp_unid IS 'Tipo de unidade (Estabelecimento)';
COMMENT ON COLUMN cnes.tb_cnes_ee.turno_at IS 'Código de turno de atendimento';
COMMENT ON COLUMN cnes.tb_cnes_ee.niv_hier IS 'Código do nível de hierarquia';
COMMENT ON COLUMN cnes.tb_cnes_ee.terceiro IS 'O estabelecimento é terceiro: 1-Sim 0-Não 2-não';
COMMENT ON COLUMN cnes.tb_cnes_ee.cod_cep IS 'CEP do estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_ee.vinc_sus IS 'Vínculo com SUS: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_ee.tp_prest IS 'Tipo de Prestador';
COMMENT ON COLUMN cnes.tb_cnes_ee.sgruphab IS 'Código da habilitação';
COMMENT ON COLUMN cnes.tb_cnes_ee.cmpt_ini IS 'Competência inicial';
COMMENT ON COLUMN cnes.tb_cnes_ee.cmpt_fim IS 'Competência final';
COMMENT ON COLUMN cnes.tb_cnes_ee.dtportar IS 'Data da portaria';
COMMENT ON COLUMN cnes.tb_cnes_ee.portaria IS 'Portaria';
COMMENT ON COLUMN cnes.tb_cnes_ee.maportar IS 'Campo DT_PORTARIA formatado como AAAAMM';
COMMENT ON COLUMN cnes.tb_cnes_ee.competen IS 'Ano e Mês de competência da informação (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_ee.nat_jur IS 'Natureza Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_ee.arquivo IS 'Nome do arquivo fonte dos dados.';