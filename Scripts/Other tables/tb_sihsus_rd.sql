DROP TABLE IF EXISTS principal.tb_sihsus_rd CASCADE;
CREATE TABLE principal.tb_sihsus_rd (
	uf_zi varchar(6) NULL,
	ano_cmpt varchar(4) NULL,
	mes_cmpt varchar(10) NULL,
	espec varchar(10) NULL,
	cgc_hosp varchar(14) NULL,
	n_aih varchar(13) NULL,
	ident varchar(10) NULL,
	cep varchar(8) NULL,
	munic_res varchar(6) NULL,
	nasc timestamp NULL,
	sexo varchar(10) NULL,
	uti_mes_in numeric(10,2) NULL,
	uti_mes_an numeric(10,2) NULL,
	uti_mes_al numeric(10,2) NULL,
	uti_mes_to numeric(10,2) NULL,
	marca_uti varchar(10) NULL,
	uti_int_in numeric(10,2) NULL,
	uti_int_an numeric(10,2) NULL,
	uti_int_al numeric(10,2) NULL,
	uti_int_to numeric(10,2) NULL,
	diar_acom numeric(10,2) NULL,
	qt_diarias numeric(10,2) NULL,
	proc_solic varchar(50) NULL,
	proc_rea varchar(50) NULL,
	val_sh numeric(13,2) NULL,
	val_sp numeric(13,2) NULL,
	val_sadt numeric(13,2) NULL,
	val_rn numeric(13,2) NULL,
	val_acomp numeric(13,2) NULL,
	val_ortp numeric(13,2) NULL,
	val_sangue numeric(13,2) NULL,
	val_sadtsr numeric(11,2) NULL,
	val_transp numeric(13,2) NULL,
	val_obsang numeric(11,2) NULL,
	val_ped1ac numeric(11,2) NULL,
	val_tot numeric(14,2) NULL,
	val_uti numeric(8,2) NULL,
	us_tot numeric(10,2) NULL,
	dt_inter timestamp NULL,
	dt_saida timestamp NULL,
	diag_princ varchar(4) NULL,
	diag_secun varchar(4) NULL,
	cobranca varchar(10) NULL,
	natureza varchar(10) NULL,
	nat_jur varchar(4) NULL,
	gestao varchar(10) NULL,
	rubrica numeric(10,2) NULL,
	ind_vdrl varchar(10) NULL,
	munic_mov varchar(6) NULL,
	cod_idade varchar(10) NULL,
	idade numeric(10,2) NULL,
	dias_perm numeric(10,2) NULL,
	morte numeric(10,2) NULL,
	nacional varchar(10) NULL,
	num_proc varchar(4) NULL,
	car_int varchar(10) NULL,
	tot_pt_sp numeric(6) NULL,
	cpf_aut varchar(50) NULL,
	homonimo varchar(10) NULL,
	num_filhos numeric(10,2) NULL,
	instru varchar(10) NULL,
	cid_notif varchar(4) NULL,
	contracep1 varchar(10) NULL,
	contracep2 varchar(10) NULL,
	gestrisco varchar(10) NULL,
	insc_pn varchar(12) NULL,
	seq_aih5 varchar(10) NULL,
	cbor varchar(10) NULL,
	cnaer varchar(10) NULL,
	vincprev varchar(10) NULL,
	gestor_cod varchar(10) NULL,
	gestor_tp varchar(10) NULL,
	gestor_cpf varchar(50) NULL,
	gestor_dt timestamp NULL,
	cnes varchar(7) NULL,
	cnpj_mant varchar(14) NULL,
	infehosp varchar(10) NULL,
	cid_asso varchar(4) NULL,
	cid_morte varchar(4) NULL,
	complex varchar(10) NULL,
	financ varchar(10) NULL,
	faec_tp varchar(6) NULL,
	regct varchar(4) NULL,
	raca_cor varchar(4) NULL,
	etnia varchar(4) NULL,
	sequencia numeric(9) NULL,
	remessa varchar(21) NULL,
	aud_just varchar(50) NULL,
	sis_just varchar(50) NULL,
	val_sh_fed numeric(10,2) NULL,
	val_sp_fed numeric(10,2) NULL,
	val_sh_ges varchar(10) NULL,
	val_sp_ges varchar(10) NULL,
	val_uci numeric(10,2) NULL,
	marca_uci numeric(10,2) NULL,
	diagsec1 varchar(50) NULL,
	diagsec2 varchar(50) NULL,
	diagsec3 varchar(50) NULL,
	diagsec4 varchar(50) NULL,
	diagsec5 varchar(50) NULL,
	diagsec6 varchar(50) NULL,
	diagsec7 varchar(50) NULL,
	diagsec8 varchar(50) NULL,
	diagsec9 varchar(10) NULL,
	tpdisec1 numeric(10,2) NULL,
	tpdisec2 numeric(10,2) NULL,
	tpdisec3 numeric(10,2) NULL,
	tpdisec4 numeric(10,2) NULL,
	tpdisec5 numeric(10,2) NULL,
	tpdisec6 numeric(10,2) NULL,
	tpdisec7 numeric(10,2) NULL,
	tpdisec8 numeric(10,2) NULL,
	tpdisec9 numeric(10,2) NULL
);
COMMENT ON COLUMN principal.tb_sihsus_rd.uf_zi IS 'Município Gestor.';
COMMENT ON COLUMN principal.tb_sihsus_rd.ano_cmpt IS 'Ano de processamento da AIH, no formato aaaa.';
COMMENT ON COLUMN principal.tb_sihsus_rd.mes_cmpt IS 'Mês de processamento da AIH, no formato mm.';
COMMENT ON COLUMN principal.tb_sihsus_rd.espec IS 'Especialidade do Leito';
COMMENT ON COLUMN principal.tb_sihsus_rd.cgc_hosp IS 'CNPJ do Estabelecimento.';
COMMENT ON COLUMN principal.tb_sihsus_rd.n_aih IS 'Número da AIH.';
COMMENT ON COLUMN principal.tb_sihsus_rd.ident IS 'Identificação do tipo da AIH.';
COMMENT ON COLUMN principal.tb_sihsus_rd.cep IS 'CEP do paciente.';
COMMENT ON COLUMN principal.tb_sihsus_rd.munic_res IS 'Município de Residência do Paciente';
COMMENT ON COLUMN principal.tb_sihsus_rd.nasc IS 'Data de nascimento do paciente (aaaammdd).';
COMMENT ON COLUMN principal.tb_sihsus_rd.sexo IS 'Sexo do paciente.';
COMMENT ON COLUMN principal.tb_sihsus_rd.uti_mes_in IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.uti_mes_an IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.uti_mes_al IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.uti_mes_to IS 'Quantidade de dias de UTI no mês.';
COMMENT ON COLUMN principal.tb_sihsus_rd.marca_uti IS 'Indica qual o tipo de UTI utilizada pelo paciente.';
COMMENT ON COLUMN principal.tb_sihsus_rd.uti_int_in IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.uti_int_an IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.uti_int_al IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.uti_int_to IS 'Quantidade de diárias em unidade intermediaria.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diar_acom IS 'Quantidade de diárias de acompanhante.';
COMMENT ON COLUMN principal.tb_sihsus_rd.qt_diarias IS 'Quantidade de diárias.';
COMMENT ON COLUMN principal.tb_sihsus_rd.proc_solic IS 'Procedimento solicitado.';
COMMENT ON COLUMN principal.tb_sihsus_rd.proc_rea IS 'Procedimento realizado.';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_sh IS 'Valor de serviços hospitalares.';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_sp IS 'Valor de serviços profissionais.';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_sadt IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_rn IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_acomp IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_ortp IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_sangue IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_sadtsr IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_transp IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_obsang IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_ped1ac IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_tot IS 'Valor total da AIH.';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_uti IS 'Valor de UTI.';
COMMENT ON COLUMN principal.tb_sihsus_rd.us_tot IS 'Valor total, em dólar.';
COMMENT ON COLUMN principal.tb_sihsus_rd.dt_inter IS 'Data de internação no formato aaammdd.';
COMMENT ON COLUMN principal.tb_sihsus_rd.dt_saida IS 'Data de saída, no formato aaaammdd.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diag_princ IS 'Código do diagnóstico principal (CID10).';
COMMENT ON COLUMN principal.tb_sihsus_rd.diag_secun IS 'Código do diagnostico secundário (CID10). Preenchido com zeros a partir de 201501.';
COMMENT ON COLUMN principal.tb_sihsus_rd.cobranca IS 'Motivo de Saída/Permanência';
COMMENT ON COLUMN principal.tb_sihsus_rd.natureza IS 'Natureza jurídica do hospital (com conteúdo até maio/12). Era utilizada a classificação de Regime e Natureza.';
COMMENT ON COLUMN principal.tb_sihsus_rd.nat_jur IS 'Natureza jurídica      do Estabelecimento, conforme a Comissão Nacional de Classificação - CONCLA';
COMMENT ON COLUMN principal.tb_sihsus_rd.gestao IS 'Indica o tipo de gestão do hospital.';
COMMENT ON COLUMN principal.tb_sihsus_rd.rubrica IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.ind_vdrl IS 'Indica exame VDRL.';
COMMENT ON COLUMN principal.tb_sihsus_rd.munic_mov IS 'Município do Estabelecimento.';
COMMENT ON COLUMN principal.tb_sihsus_rd.cod_idade IS 'Unidade de medida da idade.';
COMMENT ON COLUMN principal.tb_sihsus_rd.idade IS 'Idade.';
COMMENT ON COLUMN principal.tb_sihsus_rd.dias_perm IS 'Dias de Permanência.';
COMMENT ON COLUMN principal.tb_sihsus_rd.morte IS 'Indica Óbito';
COMMENT ON COLUMN principal.tb_sihsus_rd.nacional IS 'Código da nacionalidade do paciente.';
COMMENT ON COLUMN principal.tb_sihsus_rd.num_proc IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.car_int IS 'Caráter da internação.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tot_pt_sp IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.cpf_aut IS 'Zerado';
COMMENT ON COLUMN principal.tb_sihsus_rd.homonimo IS 'Indicador se o paciente da AIH é homônimo do paciente de outra AIH.';
COMMENT ON COLUMN principal.tb_sihsus_rd.num_filhos IS 'Número de filhos do paciente.';
COMMENT ON COLUMN principal.tb_sihsus_rd.instru IS 'Grau de instrução do paciente.';
COMMENT ON COLUMN principal.tb_sihsus_rd.cid_notif IS 'CID de Notificação.';
COMMENT ON COLUMN principal.tb_sihsus_rd.contracep1 IS 'Tipo de contraceptivo utilizado.';
COMMENT ON COLUMN principal.tb_sihsus_rd.contracep2 IS 'Segundo tipo de contraceptivo utilizado.';
COMMENT ON COLUMN principal.tb_sihsus_rd.gestrisco IS 'Indicador se é gestante de risco.';
COMMENT ON COLUMN principal.tb_sihsus_rd.insc_pn IS 'Número da gestante no pré-natal.';
COMMENT ON COLUMN principal.tb_sihsus_rd.seq_aih5 IS 'Sequencial de longa permanência (AIH tipo 5).';
COMMENT ON COLUMN principal.tb_sihsus_rd.cbor IS 'Ocupação do paciente, segundo a Classificação Brasileira de Ocupações – CBO.';
COMMENT ON COLUMN principal.tb_sihsus_rd.cnaer IS 'Código de acidente de trabalho.';
COMMENT ON COLUMN principal.tb_sihsus_rd.vincprev IS 'Vínculo com a Previdência.';
COMMENT ON COLUMN principal.tb_sihsus_rd.gestor_cod IS 'Motivo de autorização da AIH pelo Gestor.';
COMMENT ON COLUMN principal.tb_sihsus_rd.gestor_tp IS 'Tipo de gestor.';
COMMENT ON COLUMN principal.tb_sihsus_rd.gestor_cpf IS 'Número do CPF do Gestor.';
COMMENT ON COLUMN principal.tb_sihsus_rd.gestor_dt IS 'Data da autorização dada pelo Gestor (aaaammdd).';
COMMENT ON COLUMN principal.tb_sihsus_rd.cnes IS 'Código CNES do hospital.';
COMMENT ON COLUMN principal.tb_sihsus_rd.cnpj_mant IS 'CNPJ da mantenedora.';
COMMENT ON COLUMN principal.tb_sihsus_rd.infehosp IS 'Status de infecção hospitalar.';
COMMENT ON COLUMN principal.tb_sihsus_rd.cid_asso IS 'CID causa.';
COMMENT ON COLUMN principal.tb_sihsus_rd.cid_morte IS 'CID da morte.';
COMMENT ON COLUMN principal.tb_sihsus_rd.complex IS 'Complexidade.';
COMMENT ON COLUMN principal.tb_sihsus_rd.financ IS 'Tipo de financiamento.';
COMMENT ON COLUMN principal.tb_sihsus_rd.faec_tp IS 'Subtipo de financiamento FAEC.';
COMMENT ON COLUMN principal.tb_sihsus_rd.regct IS 'Regra contratual.';
COMMENT ON COLUMN principal.tb_sihsus_rd.raca_cor IS 'Raça/Cor do paciente.';
COMMENT ON COLUMN principal.tb_sihsus_rd.etnia IS 'Etnia do paciente, se raça cor for indígena.';
COMMENT ON COLUMN principal.tb_sihsus_rd.sequencia IS 'Sequencial da AIH na remessa.';
COMMENT ON COLUMN principal.tb_sihsus_rd.remessa IS 'Número da remessa.';
COMMENT ON COLUMN principal.tb_sihsus_rd.aud_just IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.sis_just IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_sh_fed IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_sp_fed IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_sh_ges IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_sp_ges IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.val_uci IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.marca_uci IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diagsec1 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diagsec2 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diagsec3 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diagsec4 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diagsec5 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diagsec6 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diagsec7 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diagsec8 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.diagsec9 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tpdisec1 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tpdisec2 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tpdisec3 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tpdisec4 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tpdisec5 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tpdisec6 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tpdisec7 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tpdisec8 IS 'Sem descrição.';
COMMENT ON COLUMN principal.tb_sihsus_rd.tpdisec9 IS 'Sem descrição.';
