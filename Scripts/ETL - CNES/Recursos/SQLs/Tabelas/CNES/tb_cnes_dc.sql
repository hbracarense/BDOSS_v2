DROP TABLE IF EXISTS cnes.tb_cnes_dc CASCADE;
CREATE TABLE cnes.tb_cnes_dc (
	cnes varchar(50) NULL,
	codufmun varchar(50) NULL,
	cpf_cnpj varchar(50) NULL,
	pf_pj varchar(50) NULL,
	niv_dep varchar(50) NULL,
	cnpj_man varchar(50) NULL,
	cod_ir varchar(50) NULL,
	regsaude varchar(50) NULL,
	micr_reg varchar(50) NULL,
	distrsan varchar(50) NULL,
	vinc_sus varchar(50) NULL,
	distradm varchar(50) NULL,
	tpgestao varchar(50) NULL,
	esfera_a varchar(50) NULL,
	retencao varchar(50) NULL,
	atividad varchar(50) NULL,
	natureza varchar(50) NULL,
	clientel varchar(50) NULL,
	tp_unid varchar(50) NULL,
	turno_at varchar(50) NULL,
	niv_hier varchar(50) NULL,
	tp_prest varchar(50) NULL,
	s_hbsagp numeric(50) NULL,
	s_hbsagn varchar(50) NULL,
	s_dpi numeric(50) NULL,
	s_dpac numeric(50) NULL,
	s_reagp numeric(50) NULL,
	s_reagn numeric(50) NULL,
	s_rehcv numeric(50) NULL,
	maq_prop numeric(50) NULL,
	maq_outr numeric(50) NULL,
	f_areia varchar(50) NULL,
	f_carvao varchar(50) NULL,
	abrandad varchar(50) NULL,
	deioniza varchar(50) NULL,
	osmose_r varchar(50) NULL,
	out_trat varchar(50) NULL,
	cns_nefr varchar(50) NULL,
	dialise varchar(50) NULL,
	simul_rd numeric(50) NULL,
	planj_rd numeric(50) NULL,
	armaz_ft numeric(50) NULL,
	conf_mas numeric(50) NULL,
	sala_mol numeric(50) NULL,
	blocoper numeric(50) NULL,
	s_armaze numeric(50) NULL,
	s_prepar numeric(50) NULL,
	s_qcdura numeric(50) NULL,
	s_qldura numeric(50) NULL,
	s_cpflux numeric(50) NULL,
	s_simula numeric(50) NULL,
	s_acell6 numeric(50) NULL,
	s_alseme numeric(50) NULL,
	s_alcome numeric(50) NULL,
	ortv1050 numeric(50) NULL,
	orv50150 numeric(50) NULL,
	ov150500 numeric(50) NULL,
	un_cobal numeric(50) NULL,
	eqbrbaix numeric(50) NULL,
	eqbrmedi numeric(50) NULL,
	eqbralta numeric(50) NULL,
	eq_marea numeric(50) NULL,
	eq_mindi numeric(50) NULL,
	eqsispln numeric(50) NULL,
	eqdoscli numeric(50) NULL,
	eqfonsel numeric(50) NULL,
	cns_adm varchar(50) NULL,
	cns_oped varchar(50) NULL,
	cns_conc varchar(50) NULL,
	cns_oclin varchar(50) NULL,
	cns_mrad varchar(50) NULL,
	cns_fnuc varchar(50) NULL,
	quimradi varchar(50) NULL,
	s_recepc numeric(50) NULL,
	s_trihmt numeric(50) NULL,
	s_tricli numeric(50) NULL,
	s_coleta numeric(50) NULL,
	s_aferes numeric(50) NULL,
	s_preest numeric(50) NULL,
	s_proces numeric(50) NULL,
	s_estoqu numeric(50) NULL,
	s_distri numeric(50) NULL,
	s_sorolo numeric(50) NULL,
	s_imunoh numeric(50) NULL,
	s_pretra numeric(50) NULL,
	s_hemost numeric(50) NULL,
	s_contrq numeric(50) NULL,
	s_biomol numeric(50) NULL,
	s_imunfe numeric(50) NULL,
	s_transf numeric(50) NULL,
	s_sgdoad numeric(50) NULL,
	qt_cadre numeric(50) NULL,
	qt_cenre numeric(50) NULL,
	qt_refsa numeric(50) NULL,
	qt_conra numeric(50) NULL,
	qt_extpl numeric(50) NULL,
	qt_fre18 numeric(50) NULL,
	qt_fre30 numeric(50) NULL,
	qt_agipl numeric(50) NULL,
	qt_selad numeric(50) NULL,
	qt_irrhe numeric(50) NULL,
	qt_agltn numeric(50) NULL,
	qt_maqaf numeric(50) NULL,
	qt_refre numeric(50) NULL,
	qt_refas numeric(50) NULL,
	qt_capfl numeric(50) NULL,
	cns_hmtr varchar(50) NULL,
	cns_hmtl varchar(50) NULL,
	cns_cres varchar(50) NULL,
	cns_rtec varchar(50) NULL,
	hemotera varchar(50) NULL,
	ap01cv01 varchar(50) NULL,
	ap01cv02 varchar(50) NULL,
	ap01cv03 varchar(50) NULL,
	ap01cv04 varchar(50) NULL,
	ap01cv05 varchar(50) NULL,
	ap01cv06 varchar(50) NULL,
	ap01cv07 varchar(50) NULL,
	ap02cv01 varchar(50) NULL,
	ap02cv02 varchar(50) NULL,
	ap02cv03 varchar(50) NULL,
	ap02cv04 varchar(50) NULL,
	ap02cv05 varchar(50) NULL,
	ap02cv06 varchar(50) NULL,
	ap02cv07 varchar(50) NULL,
	ap03cv01 varchar(50) NULL,
	ap03cv02 varchar(50) NULL,
	ap03cv03 varchar(50) NULL,
	ap03cv04 varchar(50) NULL,
	ap03cv05 varchar(50) NULL,
	ap03cv06 varchar(50) NULL,
	ap03cv07 varchar(50) NULL,
	ap04cv01 varchar(50) NULL,
	ap04cv02 varchar(50) NULL,
	ap04cv03 varchar(50) NULL,
	ap04cv04 varchar(50) NULL,
	ap04cv05 varchar(50) NULL,
	ap04cv06 varchar(50) NULL,
	ap04cv07 varchar(50) NULL,
	ap05cv01 varchar(50) NULL,
	ap05cv02 varchar(50) NULL,
	ap05cv03 varchar(50) NULL,
	ap05cv04 varchar(50) NULL,
	ap05cv05 varchar(50) NULL,
	ap05cv06 varchar(50) NULL,
	ap05cv07 varchar(50) NULL,
	ap06cv01 varchar(50) NULL,
	ap06cv02 varchar(50) NULL,
	ap06cv03 varchar(50) NULL,
	ap06cv04 varchar(50) NULL,
	ap06cv05 varchar(50) NULL,
	ap06cv06 varchar(50) NULL,
	ap06cv07 varchar(50) NULL,
	ap07cv01 varchar(50) NULL,
	ap07cv02 varchar(50) NULL,
	ap07cv03 varchar(50) NULL,
	ap07cv04 varchar(50) NULL,
	ap07cv05 varchar(50) NULL,
	ap07cv06 varchar(50) NULL,
	ap07cv07 varchar(50) NULL,
	atend_pr varchar(50) NULL,
	gesprg3e varchar(50) NULL,
	gesprg3m varchar(50) NULL,
	gesprg4e varchar(50) NULL,
	gesprg4m varchar(50) NULL,
	gesprg6e varchar(50) NULL,
	gesprg6m varchar(50) NULL,
	nivate_a varchar(50) NULL,
	nivate_h varchar(50) NULL,
	competen varchar(50) NULL,
	nat_jur varchar(50) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN cnes.tb_cnes_dc.cnes IS 'Número nacional do estabelecimento de saúde';
COMMENT ON COLUMN cnes.tb_cnes_dc.codufmun IS 'Código do município do estabelecimento: UF + MUNIC (sem dígito)';
COMMENT ON COLUMN cnes.tb_cnes_dc.cpf_cnpj IS 'CPF do estabelecimento, caso pessoa física ou CNPJ, caso pessoa jurídica';
COMMENT ON COLUMN cnes.tb_cnes_dc.pf_pj IS 'Indicador de pessoa: 1-Física 3-Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_dc.niv_dep IS 'Grau de dependência, onde: 1-Individual 3-Mantida';
COMMENT ON COLUMN cnes.tb_cnes_dc.cnpj_man IS 'CNPJ da mantenedora do estabelecimento.';
COMMENT ON COLUMN cnes.tb_cnes_dc.cod_ir IS 'Indica o tipo de retenção de tributos da mantenedora';
COMMENT ON COLUMN cnes.tb_cnes_dc.regsaude IS 'Código da região de saúde NOAS';
COMMENT ON COLUMN cnes.tb_cnes_dc.micr_reg IS 'Código da micro-região de saúde NOAS';
COMMENT ON COLUMN cnes.tb_cnes_dc.distrsan IS 'Código do distrito sanitário';
COMMENT ON COLUMN cnes.tb_cnes_dc.vinc_sus IS 'Vínculo com SUS: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.distradm IS 'Inicialmente chamado Distrito Administrativo, atualmente Código do Módulo Assistencial conforme tabela local, em conformidade com o Plano Diretor de Regionalização do Estado/Município.';
COMMENT ON COLUMN cnes.tb_cnes_dc.tpgestao IS 'Gestão de saúde';
COMMENT ON COLUMN cnes.tb_cnes_dc.esfera_a IS 'Código da esfera administrativa';
COMMENT ON COLUMN cnes.tb_cnes_dc.retencao IS 'Código de retenção de tributos';
COMMENT ON COLUMN cnes.tb_cnes_dc.atividad IS 'Código da atividade de ensino/pesquisa';
COMMENT ON COLUMN cnes.tb_cnes_dc.natureza IS 'Código da natureza da organização';
COMMENT ON COLUMN cnes.tb_cnes_dc.clientel IS 'Código de FLUXO da clientela';
COMMENT ON COLUMN cnes.tb_cnes_dc.tp_unid IS 'Tipo de unidade (estabelecimento)';
COMMENT ON COLUMN cnes.tb_cnes_dc.turno_at IS 'Código de turno de atendimento';
COMMENT ON COLUMN cnes.tb_cnes_dc.niv_hier IS 'Código do nível de hierarquia';
COMMENT ON COLUMN cnes.tb_cnes_dc.tp_prest IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_hbsagp IS 'Quantidade de salas HBsAG+';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_hbsagn IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_dpi IS 'Quantidade de salas DPI';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_dpac IS 'Quantidade de salas DPAC';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_reagp IS 'Quantidade de salas de reuso de HBsAG+';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_reagn IS 'Quantidade de salas de reuso de HBsAG-';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_rehcv IS 'Quantidade de Salas de reuso de HCV+';
COMMENT ON COLUMN cnes.tb_cnes_dc.maq_prop IS 'Quantidade de máquinas de proporção';
COMMENT ON COLUMN cnes.tb_cnes_dc.maq_outr IS 'Quantidade de outras máquinas';
COMMENT ON COLUMN cnes.tb_cnes_dc.f_areia IS 'Indica se faz tratamento de água com filtro de areia, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.f_carvao IS 'Indica se faz tratamento de água com filtro de carvão, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.abrandad IS 'Indica se faz tratamento de água com abrandador, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.deioniza IS 'Indica se faz tratamento de água com deionizador, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.osmose_r IS 'Indica se faz tratamento de água com máquina de osmose reversa, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.out_trat IS 'Indica se faz tratamento de água com outros tipos de equipamento, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_nefr IS 'CNS do MÉDICO NEFROLOGISTA RESPONSÀVEL';
COMMENT ON COLUMN cnes.tb_cnes_dc.dialise IS 'Indica a existência de algum REQUISITO DE DIÁLISE para este CNES, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.simul_rd IS 'Quantidade de salas simulação – (Radioterapia)';
COMMENT ON COLUMN cnes.tb_cnes_dc.planj_rd IS 'Quantidade de salas de Planejamento - (Radioterapia)';
COMMENT ON COLUMN cnes.tb_cnes_dc.armaz_ft IS 'Número de salas de armazenamento de fontes - (Radioterapia)';
COMMENT ON COLUMN cnes.tb_cnes_dc.conf_mas IS 'Número de salas confecção masc. - (Radioterapia)';
COMMENT ON COLUMN cnes.tb_cnes_dc.sala_mol IS 'Número de salas de salas de molde - (Radioterapia)';
COMMENT ON COLUMN cnes.tb_cnes_dc.blocoper IS 'Número de salas de bloco personalizado - (Radioterapia)';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_armaze IS 'Número de salas de armazenagem';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_prepar IS 'Número de salas de preparo';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_qcdura IS 'Salas/Equipamentos de Quimio Curta duração';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_qldura IS 'Salas/Equipamentos de Quimio de Longa Duração';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_cpflux IS 'Salas/Equipamentos de Capela Fluxo Laminar';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_simula IS 'Quantidade de Simuladores';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_acell6 IS 'Quantidade de Acelerador Linear até 6 MeV';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_alseme IS 'Quantidade de Acelerador Linear maior 6 MeV sem elétrons';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_alcome IS 'Quantidade de acelerador linear maior 6 MeV com elétrons';
COMMENT ON COLUMN cnes.tb_cnes_dc.ortv1050 IS 'Quantidade de Equipamentos de Ortovoltagem 10-50 KV';
COMMENT ON COLUMN cnes.tb_cnes_dc.orv50150 IS 'Quantidade de Equipamentos de Ortovoltagem 50-150 KV';
COMMENT ON COLUMN cnes.tb_cnes_dc.ov150500 IS 'Quantidade de Equipamentos de Ortovoltagem 150-500 KV';
COMMENT ON COLUMN cnes.tb_cnes_dc.un_cobal IS 'Quantidade de Unidade de Cobalto';
COMMENT ON COLUMN cnes.tb_cnes_dc.eqbrbaix IS 'Quantidade de Equipamentos de Braquiterapia Baixa';
COMMENT ON COLUMN cnes.tb_cnes_dc.eqbrmedi IS 'Quantidade de Equipamentos de Braquiterapia Média';
COMMENT ON COLUMN cnes.tb_cnes_dc.eqbralta IS 'Quantidade de Equipamentos de Braquiterapia Alta';
COMMENT ON COLUMN cnes.tb_cnes_dc.eq_marea IS 'Quantidade de Monitor de Área';
COMMENT ON COLUMN cnes.tb_cnes_dc.eq_mindi IS 'Quantidade de Monitor Individual';
COMMENT ON COLUMN cnes.tb_cnes_dc.eqsispln IS 'Quantidade de sistema de Computação para Planejamento';
COMMENT ON COLUMN cnes.tb_cnes_dc.eqdoscli IS 'Quantidade de dosímetro clínico';
COMMENT ON COLUMN cnes.tb_cnes_dc.eqfonsel IS 'Quantidade de fontes seladas';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_adm IS 'CNS do médico responsável – ADMINISTRADOR OU RESPONSÁVEL TÉCNICO';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_oped IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_conc IS 'CNS do médico responsável - por CIRURGIA ONCOLÓGICA';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_oclin IS 'CNS do médico responsável - ONCOLOGISTA CLÍNICO';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_mrad IS 'CNS do médico responsável - RADIOTERAPEUTA';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_fnuc IS 'CNS do médico responsável - FÍSICO NUCLEAR';
COMMENT ON COLUMN cnes.tb_cnes_dc.quimradi IS 'Indica a existência de algum REQUISITO DE QUÍMIO/RÁDIO para este CNES, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_recepc IS 'Número de salas de recepção';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_trihmt IS 'Número de salas de triagem hematológica';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_tricli IS 'Número de salas de triagem clínica';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_coleta IS 'Número de salas de coleta';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_aferes IS 'Número de salas de aférese';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_preest IS 'Número de salas de pré-estoque';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_proces IS 'Número de salas de processamento';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_estoqu IS 'Número de salas de estoque';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_distri IS 'Número de salas de distribuição';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_sorolo IS 'Número de salas de sorologia';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_imunoh IS 'Número de salas de imunohematologia';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_pretra IS 'Número de salas pré-transfusionais';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_hemost IS 'Número de salas hemostasia';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_contrq IS 'Número de salas de controle de qualidade';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_biomol IS 'Número de salas de biologia molecular';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_imunfe IS 'Número de salas de imunofenotipágem';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_transf IS 'Número de salas de transfusão';
COMMENT ON COLUMN cnes.tb_cnes_dc.s_sgdoad IS 'Número de salas seguimento doador';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_cadre IS 'Quantidade de cadeiras reclináveis';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_cenre IS 'Quantidade de centrífugas refrigeradas';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_refsa IS 'Quantidade de refrigeradores para guarda de sangue';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_conra IS 'Quantidade de congeladores rápidos';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_extpl IS 'Quantidade de extratores automáticos de plasma';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_fre18 IS 'Quantidade de freezers –18ºC';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_fre30 IS 'Quantidade de freezers -30ºC';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_agipl IS 'Quantidade de agitadores de plaquetas';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_selad IS 'Quantidade de seladoras';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_irrhe IS 'Quantidade de irradiadores de hemocomponentes';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_agltn IS 'Quantidade de aglutinoscópio';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_maqaf IS 'Quantidade de máquinas de aférese';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_refre IS 'Quantidade de refrigeradores para guarda de reagentes';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_refas IS 'Quantidade de refrigeradores para guarda de amostras de sangue';
COMMENT ON COLUMN cnes.tb_cnes_dc.qt_capfl IS 'Quantidade de capelas fluxo laminar';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_hmtr IS 'CNS do médico responsável - HEMOTERAPEUTA';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_hmtl IS 'CNS do médico responsável - HEMATOLOGISTA';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_cres IS 'CNS do médico capacitado RESPONSÀVEL';
COMMENT ON COLUMN cnes.tb_cnes_dc.cns_rtec IS 'CNS do responsável TÉCNICO / SOROLOGIA';
COMMENT ON COLUMN cnes.tb_cnes_dc.hemotera IS 'Indica a existência de algum REQUISITO DE HEMOTERAPIA para este CNES, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap01cv01 IS 'Atendimento prestado INTERNAÇÃO/Convenio SUS, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap01cv02 IS 'Atendimento prestado INTERNAÇÃO/Convenio PARTICULAR, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap01cv03 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap01cv04 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap01cv05 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap01cv06 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap01cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap02cv01 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio SUS, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap02cv02 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PARTICULAR, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap02cv03 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO- SEGURO PROPRIO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap02cv04 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO- SEGURO TERCEIRO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap02cv05 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap02cv06 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap02cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap03cv01 IS 'Atendimento prestado SADT/Convenio SUS, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap03cv02 IS 'Atendimento prestado SADT/Convenio PARTICULAR, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap03cv03 IS 'Atendimento prestado SADT/Convenio PLANO-SEGURO PROPRIO, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap03cv04 IS 'Atendimento prestado SADT/Convenio PLANO-SEGURO TERCEIRO, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap03cv05 IS 'Atendimento prestado SADT/Convenio PLANO de SAUDE PUBLICO, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap03cv06 IS 'Atendimento prestado SADT/Convenio PLANO de SAUDE PRIVADO, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap03cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap04cv01 IS 'Atendimento prestado URGENCIA/Convenio SUS, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap04cv02 IS 'Atendimento prestado URGENCIA/Convenio PARTICULAR, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap04cv03 IS 'Atendimento prestado URGENCIA/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap04cv04 IS 'Atendimento prestado URGENCIA/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap04cv05 IS 'Atendimento prestado URGENCIA/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap04cv06 IS 'Atendimento prestado URGENCIA/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap04cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap05cv01 IS 'Atendimento prestado OUTROS/Convenio SUS, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap05cv02 IS 'Atendimento prestado OUTROS/Convenio PARTICULAR, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap05cv03 IS 'Atendimento prestado OUTROS/Convenio PLANO-SEGURO PROPRIO, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap05cv04 IS 'Atendimento prestado OUTROS/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap05cv05 IS 'Atendimento prestado OUTROS/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap05cv06 IS 'Atendimento prestado OUTROS/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap05cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap06cv01 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio SUS, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap06cv02 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PARTICULAR, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap06cv03 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap06cv04 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap06cv05 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap06cv06 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap06cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap07cv01 IS 'Atendimento prestado REGULACAO/Convenio SUS, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap07cv02 IS 'Atendimento prestado REGULACAO/Convenio PARTICULAR, onde: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap07cv03 IS 'Atendimento prestado REGULACAO/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap07cv04 IS 'Atendimento prestado REGULACAO/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap07cv05 IS 'Atendimento prestado REGULACAO/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap07cv06 IS 'Atendimento prestado REGULACAO/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.ap07cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_dc.atend_pr IS 'Indica a existência de algum atendimento prestado para este CNES, onde: 1-sim / 0-não';
COMMENT ON COLUMN cnes.tb_cnes_dc.gesprg3e IS 'Indicador se a gestão do programa é ESTADUAL, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_dc.gesprg3m IS 'Indicador se a gestão do programa é MUNICIPAL, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_dc.gesprg4e IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é ESTADUAL, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.gesprg4m IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é MUNICIPAL, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.gesprg6e IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção HOSPITALAR é ESTADUAL, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.gesprg6m IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção HOSPITALAR é MUNICIPAL, onde:_x000D__x000D_ 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_dc.nivate_a IS 'Indica a existência de Nível de Atenção AMBULATORIAL, de gestão Municipal/Estadual, para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_dc.nivate_h IS 'Indica a existência de Nível de Atenção HOSPITALAR, de gestão Municipal/Estadual, para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_dc.competen IS 'Ano e Mês de competência da informação (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_dc.nat_jur IS 'Natureza Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_dc.arquivo IS 'Nome do arquivo fonte dos dados.';