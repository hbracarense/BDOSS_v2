DROP TABLE IF EXISTS cnes.tb_cnes_pf CASCADE;
CREATE TABLE cnes.tb_cnes_pf (
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
	cpfunico varchar(50) NULL,
	cbo varchar(50) NULL,
	cbounico varchar(50) NULL,
	nomeprof varchar(60) NULL,
	cns_prof varchar(50) NULL,
	conselho varchar(50) NULL,
	registro varchar(50) NULL,
	vinculac varchar(50) NULL,
	vincul_c varchar(50) NULL,
	vincul_a varchar(50) NULL,
	vincul_n varchar(50) NULL,
	prof_sus varchar(50) NULL,
	profnsus varchar(50) NULL,
	horaoutr varchar(50) NULL,
	horahosp varchar(50) NULL,
	hora_amb varchar(50) NULL,
	competen varchar(50) NULL,
	ufmunres varchar(50) NULL,
	nat_jur varchar(50) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN cnes.tb_cnes_pf.cnes IS 'Número nacional do estabelecimento de saúde';
COMMENT ON COLUMN cnes.tb_cnes_pf.codufmun IS 'Código do município do estabelecimento UF+ MUNIC (sem dígito)';
COMMENT ON COLUMN cnes.tb_cnes_pf.regsaude IS 'Código da região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_pf.micr_reg IS 'Código da micro-região de saúde';
COMMENT ON COLUMN cnes.tb_cnes_pf.distrsan IS 'Código do distrito sanitário';
COMMENT ON COLUMN cnes.tb_cnes_pf.distradm IS 'Código do distrito administrativo';
COMMENT ON COLUMN cnes.tb_cnes_pf.tpgestao IS 'Gestão de saúde';
COMMENT ON COLUMN cnes.tb_cnes_pf.pf_pj IS 'Indicador de pessoa: 1-Física 3-Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_pf.cpf_cnpj IS 'CPF do Estabelecimento, caso pessoa física ou CNPJ, caso pessoa jurídica';
COMMENT ON COLUMN cnes.tb_cnes_pf.niv_dep IS 'Grau de dependência, onde: 1-Individual 3-Mantida';
COMMENT ON COLUMN cnes.tb_cnes_pf.cnpj_man IS 'CNPJ da mantenedora do estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_pf.esfera_a IS 'Código da esfera administrativa';
COMMENT ON COLUMN cnes.tb_cnes_pf.atividad IS 'Código da atividade de ensino';
COMMENT ON COLUMN cnes.tb_cnes_pf.retencao IS 'Código de retenção de tributos';
COMMENT ON COLUMN cnes.tb_cnes_pf.natureza IS 'Código da natureza da organização';
COMMENT ON COLUMN cnes.tb_cnes_pf.clientel IS 'Código de fluxo da clientela';
COMMENT ON COLUMN cnes.tb_cnes_pf.tp_unid IS 'Tipo de unidade (estabelecimento)';
COMMENT ON COLUMN cnes.tb_cnes_pf.turno_at IS 'Código de turno de atendimento';
COMMENT ON COLUMN cnes.tb_cnes_pf.niv_hier IS 'Código do nível de hierarquia';
COMMENT ON COLUMN cnes.tb_cnes_pf.terceiro IS 'O estabelecimento é terceiro: 1-Sim 0-Não 2-não';
COMMENT ON COLUMN cnes.tb_cnes_pf.cpfunico IS 'Contador de CPF ÚNICO do Profissional (O preenchimento deste campo acontece somente uma vez por chave - única- CPF) Nos casos em que o CPF for 99999999999, o CPFUNICO sempre deve ser “1”.';
COMMENT ON COLUMN cnes.tb_cnes_pf.cbo IS 'Código da especialidade do profissional';
COMMENT ON COLUMN cnes.tb_cnes_pf.cbounico IS 'Registro único do Código da especialidade do profissional (este registro acontece somente uma vez por chave única CPF + CBO)';
COMMENT ON COLUMN cnes.tb_cnes_pf.nomeprof IS 'Nome do profissional';
COMMENT ON COLUMN cnes.tb_cnes_pf.cns_prof IS 'CNS do profissional ou “999999999999999” caso não seja preenchido.';
COMMENT ON COLUMN cnes.tb_cnes_pf.conselho IS 'Código do conselho de classe';
COMMENT ON COLUMN cnes.tb_cnes_pf.registro IS 'Número do registro no conselho de classe';
COMMENT ON COLUMN cnes.tb_cnes_pf.vinculac IS 'Vínculo empregatício com o estabelecimento:';
COMMENT ON COLUMN cnes.tb_cnes_pf.vincul_c IS 'Vínculo empregatício com o estabelecimento: Contratado SUS';
COMMENT ON COLUMN cnes.tb_cnes_pf.vincul_a IS 'Vínculo empregatício com o estabelecimento: Autônomo SUS';
COMMENT ON COLUMN cnes.tb_cnes_pf.vincul_n IS 'Vínculo empregatício com o estabelecimento: Vínculo não identificado (registros de profissionais não SUS e outras situações anômalas)';
COMMENT ON COLUMN cnes.tb_cnes_pf.prof_sus IS 'Caracterização do PROFISSIONAL que realiza ATENDIMENTO SUS';
COMMENT ON COLUMN cnes.tb_cnes_pf.profnsus IS 'Caracterização do PROFISSIONAL que realiza ATENDIMENTO NÃO SUS';
COMMENT ON COLUMN cnes.tb_cnes_pf.horaoutr IS 'Carga horária não ambulatorial, nem hospitalar';
COMMENT ON COLUMN cnes.tb_cnes_pf.horahosp IS 'Carga horária HOSPITALAR';
COMMENT ON COLUMN cnes.tb_cnes_pf.hora_amb IS 'Carga horária AMBULATORIAL';
COMMENT ON COLUMN cnes.tb_cnes_pf.competen IS 'Ano e Mês de competência da informação (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_pf.ufmunres IS 'Código da UF + município de residência do profissional (sem dígito)';
COMMENT ON COLUMN cnes.tb_cnes_pf.nat_jur IS 'Natureza Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_pf.arquivo IS 'Nome do arquivo fonte dos dados.';
