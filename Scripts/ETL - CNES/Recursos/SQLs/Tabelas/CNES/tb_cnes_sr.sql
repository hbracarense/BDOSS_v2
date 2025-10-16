DROP TABLE IF EXISTS cnes.tb_cnes_sr CASCADE;
CREATE TABLE cnes.tb_cnes_sr (
	cnes varchar(50) NULL,
	codufmun varchar(50) NULL,
	serv_esp varchar(50) NULL,
	class_sr varchar(50) NULL,
	srvunico varchar(50) NULL,
	regsaude varchar(50) NULL,
	micr_reg varchar(50) NULL,
	distrsan varchar(50) NULL,
	distradm varchar(50) NULL,
	tpgestao varchar(50) NULL,
	pf_pj varchar(50) NULL,
	cpf_cnpj varchar(50) NULL,
	niv_dep varchar(50) NULL,
	esfera_a varchar(50) NULL,
	atividad varchar(50) NULL,
	retencao varchar(50) NULL,
	natureza varchar(50) NULL,
	clientel varchar(50) NULL,
	tp_unid varchar(50) NULL,
	turno_at varchar(50) NULL,
	niv_hier varchar(50) NULL,
	terceiro varchar(50) NULL,
	cnpj_man varchar(50) NULL,
	caracter varchar(50) NULL,
	amb_nsus varchar(50) NULL,
	amb_sus varchar(50) NULL,
	hosp_nsus varchar(50) NULL,
	hosp_sus varchar(50) NULL,
	competen varchar(50) NULL,
	contsrvu varchar(50) NULL,
	cnesterc varchar(50) NULL,
	nat_jur varchar(50) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN cnes.tb_cnes_sr.cnes IS 'Número nacional do estabelecimento de saúde';
COMMENT ON COLUMN cnes.tb_cnes_sr.codufmun IS 'Código do município do estabelecimento UF+ MUNIC (sem dígito)';
COMMENT ON COLUMN cnes.tb_cnes_sr.serv_esp IS 'Código do serviço especializado';
COMMENT ON COLUMN cnes.tb_cnes_sr.class_sr IS 'Código da classificação do serviço ou ‘999’, caso INEXISTENTE';
COMMENT ON COLUMN cnes.tb_cnes_sr.srvunico IS 'Código do serviço especializado ÚNICO_x000D__x000D_ (O PREENCHIMENTO deste campo acontece somente uma vez por chave única CNES + SERV_ESP)';
COMMENT ON COLUMN cnes.tb_cnes_sr.regsaude IS 'Código da região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_sr.micr_reg IS 'Código da micro-região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_sr.distrsan IS 'Código do distrito sanitário';
COMMENT ON COLUMN cnes.tb_cnes_sr.distradm IS 'Código do distrito administrativo';
COMMENT ON COLUMN cnes.tb_cnes_sr.tpgestao IS 'Gestão de saúde';
COMMENT ON COLUMN cnes.tb_cnes_sr.pf_pj IS 'Indicador de pessoa: 1-Física 3-Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_sr.cpf_cnpj IS 'CPF do Estabelecimento, caso pessoa física ou CNPJ, caso pessoa jurídica';
COMMENT ON COLUMN cnes.tb_cnes_sr.niv_dep IS 'Grau de dependência, onde: 1-Individual 3-Mantida';
COMMENT ON COLUMN cnes.tb_cnes_sr.esfera_a IS 'Código da esfera administrativa';
COMMENT ON COLUMN cnes.tb_cnes_sr.atividad IS 'Código da atividade de ensino';
COMMENT ON COLUMN cnes.tb_cnes_sr.retencao IS 'Código de retenção de tributos';
COMMENT ON COLUMN cnes.tb_cnes_sr.natureza IS 'Código da natureza da organização';
COMMENT ON COLUMN cnes.tb_cnes_sr.clientel IS 'Código de fluxo da clientela';
COMMENT ON COLUMN cnes.tb_cnes_sr.tp_unid IS 'Tipo de unidade (Estabelecimento)';
COMMENT ON COLUMN cnes.tb_cnes_sr.turno_at IS 'Código de turno de atendimento';
COMMENT ON COLUMN cnes.tb_cnes_sr.niv_hier IS 'Código do nível de hierarquia';
COMMENT ON COLUMN cnes.tb_cnes_sr.terceiro IS 'O estabelecimento é terceiro: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_sr.cnpj_man IS 'CNPJ da mantenedora do estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_sr.caracter IS 'Caracterização do serviço';
COMMENT ON COLUMN cnes.tb_cnes_sr.amb_nsus IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_sr.amb_sus IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_sr.hosp_nsus IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_sr.hosp_sus IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_sr.competen IS 'Ano e Mês de competência da informação (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_sr.contsrvu IS 'INDICADOR de serviço especializado ÚNICO';
COMMENT ON COLUMN cnes.tb_cnes_sr.cnesterc IS 'Número nacional do estabelecimento de saúde TERCEIRO';
COMMENT ON COLUMN cnes.tb_cnes_sr.nat_jur IS 'Natureza Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_sr.arquivo IS 'Nome do arquivo fonte dos dados.';