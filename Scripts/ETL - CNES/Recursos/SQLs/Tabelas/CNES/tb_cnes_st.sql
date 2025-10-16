DROP TABLE IF EXISTS cnes.tb_cnes_st CASCADE;
CREATE TABLE cnes.tb_cnes_st (
	cnes varchar(50) NULL,
	codufmun varchar(50) NULL,
	cod_cep varchar(50) NULL,
	cpf_cnpj varchar(50) NULL,
	pf_pj varchar(50) NULL,
	niv_dep varchar(50) NULL,
	cnpj_man varchar(50) NULL,
	cod_ir varchar(50) NULL,
	regsaude varchar(50) NULL,
	micr_reg varchar(50) NULL,
	distrsan varchar(50) NULL,
	distradm varchar(50) NULL,
	vinc_sus varchar(50) NULL,
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
	co_banco varchar(50) NULL,
	co_agenc varchar(50) NULL,
	c_corren varchar(50) NULL,
	contratm varchar(50) NULL,
	dt_publm varchar(50) NULL,
	contrate varchar(50) NULL,
	dt_puble varchar(50) NULL,
	alvara varchar(50) NULL,
	dt_exped varchar(50) NULL,
	orgexped varchar(50) NULL,
	av_acred varchar(50) NULL,
	clasaval varchar(50) NULL,
	dt_acred varchar(50) NULL,
	av_pnass varchar(50) NULL,
	dt_pnass varchar(50) NULL,
	gesprg1e varchar(50) NULL,
	gesprg1m varchar(50) NULL,
	gesprg2e varchar(50) NULL,
	gesprg2m varchar(50) NULL,
	gesprg4e varchar(50) NULL,
	gesprg4m varchar(50) NULL,
	nivate_a varchar(50) NULL,
	gesprg3e varchar(50) NULL,
	gesprg3m varchar(50) NULL,
	gesprg5e varchar(50) NULL,
	gesprg5m varchar(50) NULL,
	gesprg6e varchar(50) NULL,
	gesprg6m varchar(50) NULL,
	nivate_h varchar(50) NULL,
	qtleitp1 numeric(50) NULL,
	qtleitp2 numeric(50) NULL,
	qtleitp3 numeric(50) NULL,
	leithosp varchar(50) NULL,
	qtinst01 numeric(50) NULL,
	qtinst02 numeric(50) NULL,
	qtinst03 numeric(50) NULL,
	qtinst04 numeric(50) NULL,
	qtinst05 numeric(50) NULL,
	qtinst06 numeric(50) NULL,
	qtinst07 numeric(50) NULL,
	qtinst08 numeric(50) NULL,
	qtinst09 numeric(50) NULL,
	qtinst10 numeric(50) NULL,
	qtinst11 numeric(50) NULL,
	qtinst12 numeric(50) NULL,
	qtinst13 numeric(50) NULL,
	qtinst14 numeric(50) NULL,
	urgemerg varchar(50) NULL,
	qtinst15 numeric(50) NULL,
	qtinst16 numeric(50) NULL,
	qtinst17 numeric(50) NULL,
	qtinst18 numeric(50) NULL,
	qtinst19 numeric(50) NULL,
	qtinst20 numeric(50) NULL,
	qtinst21 numeric(50) NULL,
	qtinst22 numeric(50) NULL,
	qtinst23 numeric(50) NULL,
	qtinst24 numeric(50) NULL,
	qtinst25 numeric(50) NULL,
	qtinst26 numeric(50) NULL,
	qtinst27 numeric(50) NULL,
	qtinst28 numeric(50) NULL,
	qtinst29 numeric(50) NULL,
	qtinst30 numeric(50) NULL,
	atendamb varchar(50) NULL,
	qtinst31 numeric(50) NULL,
	qtinst32 numeric(50) NULL,
	qtinst33 numeric(50) NULL,
	centrcir varchar(50) NULL,
	qtinst34 numeric(50) NULL,
	qtinst35 numeric(50) NULL,
	qtinst36 numeric(50) NULL,
	qtinst37 numeric(50) NULL,
	centrobs varchar(50) NULL,
	qtleit05 numeric(50) NULL,
	qtleit06 numeric(50) NULL,
	qtleit07 numeric(50) NULL,
	qtleit08 varchar(50) NULL,
	qtleit09 numeric(50) NULL,
	qtleit19 numeric(50) NULL,
	qtleit20 numeric(50) NULL,
	qtleit21 numeric(50) NULL,
	qtleit22 numeric(50) NULL,
	qtleit23 numeric(50) NULL,
	qtleit32 numeric(50) NULL,
	qtleit34 numeric(50) NULL,
	qtleit38 numeric(50) NULL,
	qtleit39 numeric(50) NULL,
	qtleit40 numeric(50) NULL,
	centrneo varchar(50) NULL,
	atendhos varchar(50) NULL,
	serap01p varchar(50) NULL,
	serap01t varchar(50) NULL,
	serap02p varchar(50) NULL,
	serap02t varchar(50) NULL,
	serap03p varchar(50) NULL,
	serap03t varchar(50) NULL,
	serap04p varchar(50) NULL,
	serap04t varchar(50) NULL,
	serap05p varchar(50) NULL,
	serap05t varchar(50) NULL,
	serap06p varchar(50) NULL,
	serap06t varchar(50) NULL,
	serap07p varchar(50) NULL,
	serap07t varchar(50) NULL,
	serap08p varchar(50) NULL,
	serap08t varchar(50) NULL,
	serap09p varchar(50) NULL,
	serap09t varchar(50) NULL,
	serap10p varchar(50) NULL,
	serap10t varchar(50) NULL,
	serap11p varchar(50) NULL,
	serap11t varchar(50) NULL,
	serapoio varchar(50) NULL,
	res_biol varchar(50) NULL,
	res_quim varchar(50) NULL,
	res_radi varchar(50) NULL,
	res_comu varchar(50) NULL,
	coletres varchar(50) NULL,
	comiss01 varchar(50) NULL,
	comiss02 varchar(50) NULL,
	comiss03 varchar(50) NULL,
	comiss04 varchar(50) NULL,
	comiss05 varchar(50) NULL,
	comiss06 varchar(50) NULL,
	comiss07 varchar(50) NULL,
	comiss08 varchar(50) NULL,
	comiss09 varchar(50) NULL,
	comiss10 varchar(50) NULL,
	comiss11 varchar(50) NULL,
	comiss12 varchar(50) NULL,
	comissao varchar(50) NULL,
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
	dt_atual varchar(50) NULL,
	competen varchar(50) NULL,
	nat_jur varchar(50) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN cnes.tb_cnes_st.cnes IS 'Número nacional do estabelecimento de saúde';
COMMENT ON COLUMN cnes.tb_cnes_st.codufmun IS 'Código do município do estabelecimento: UF + MUNIC (sem dígito)';
COMMENT ON COLUMN cnes.tb_cnes_st.cod_cep IS 'Código do CEP do estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_st.cpf_cnpj IS 'CPF do estabelecimento, caso pessoa física ou CNPJ, caso pessoa jurídica';
COMMENT ON COLUMN cnes.tb_cnes_st.pf_pj IS 'Indicador de pessoa: 1-Física 3-Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_st.niv_dep IS 'Grau de dependência, onde: 1-Individual 3-Mantida';
COMMENT ON COLUMN cnes.tb_cnes_st.cnpj_man IS 'CNPJ da mantenedora do estabelecimento.';
COMMENT ON COLUMN cnes.tb_cnes_st.cod_ir IS 'Indica o tipo de retenção de tributos da mantenedora';
COMMENT ON COLUMN cnes.tb_cnes_st.regsaude IS 'Código da região de saúde NOAS';
COMMENT ON COLUMN cnes.tb_cnes_st.micr_reg IS 'Código da micro-região de saúde NOAS';
COMMENT ON COLUMN cnes.tb_cnes_st.distrsan IS 'Código do distrito sanitário';
COMMENT ON COLUMN cnes.tb_cnes_st.distradm IS 'Inicialmente chamado Distrito Administrativo, atualmente Código do Módulo Assistencial conforme tabela local, em conformidade com o Plano Diretor de Regionalização do Estado/Município.';
COMMENT ON COLUMN cnes.tb_cnes_st.vinc_sus IS 'Vínculo com SUS: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_st.tpgestao IS 'Gestão de saúde';
COMMENT ON COLUMN cnes.tb_cnes_st.esfera_a IS 'Código da esfera administrativa';
COMMENT ON COLUMN cnes.tb_cnes_st.retencao IS 'Código de retenção de tributos';
COMMENT ON COLUMN cnes.tb_cnes_st.atividad IS 'Código da atividade de ensino/pesquisa';
COMMENT ON COLUMN cnes.tb_cnes_st.natureza IS 'Código da natureza da organização';
COMMENT ON COLUMN cnes.tb_cnes_st.clientel IS 'Código de FLUXO da clientela';
COMMENT ON COLUMN cnes.tb_cnes_st.tp_unid IS 'Tipo de unidade (estabelecimento)';
COMMENT ON COLUMN cnes.tb_cnes_st.turno_at IS 'Código de turno de atendimento';
COMMENT ON COLUMN cnes.tb_cnes_st.niv_hier IS 'Código do nível de hierarquia';
COMMENT ON COLUMN cnes.tb_cnes_st.tp_prest IS 'Tipo de Prestador';
COMMENT ON COLUMN cnes.tb_cnes_st.co_banco IS 'Código do Banco do Estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_st.co_agenc IS 'Código da Agência do Estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_st.c_corren IS 'Código da Conta Corrente do Estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_st.contratm IS 'Número do contrato/convênio MUNICIPAL do vínculo com o SUS';
COMMENT ON COLUMN cnes.tb_cnes_st.dt_publm IS 'Ano e Mês de publicação do contrato /convênio MUNICIPAL (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_st.contrate IS 'Número do contrato/convênio ESTADUAL do vínculo com o SUS';
COMMENT ON COLUMN cnes.tb_cnes_st.dt_puble IS 'Ano e Mês de publicação do contrato  /convênio ESTADUAL (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_st.alvara IS 'Número do alvará';
COMMENT ON COLUMN cnes.tb_cnes_st.dt_exped IS 'Ano e Mês de da expedição do alvará (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_st.orgexped IS 'Órgão expedidor do alvará, onde: 1-SES 2-SMS';
COMMENT ON COLUMN cnes.tb_cnes_st.av_acred IS 'Indica se o estabelecimento foi avaliado segundo o Manual de Acreditação Hospitalar do MS, onde:_x000D__x000D_ 1-Sim 2-Não';
COMMENT ON COLUMN cnes.tb_cnes_st.clasaval IS 'Classificação da avaliação do estabelecimento segundo o Manual de Acreditação Hospitalar do MS';
COMMENT ON COLUMN cnes.tb_cnes_st.dt_acred IS 'Ano e Mês da Acreditação (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_st.av_pnass IS 'Indica se o estabelecimento foi avaliado segundo o Programa Nacional de Serviços de Saúde - PNASS, onde:_x000D__x000D_ 1-Sim 2-Não';
COMMENT ON COLUMN cnes.tb_cnes_st.dt_pnass IS 'Ano e Mês da Avaliação PNASS (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg1e IS 'Indicador se a gestão da atividade ATENÇÃO BÁSICA do Nível de Atenção AMBULATORIAL é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg1m IS 'Indicador se a gestão da atividade ATENÇÃO BÁSICA do Nível de Atenção AMBULATORIAL é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg2e IS 'Indicador se a gestão da atividade MÉDIA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg2m IS 'Indicador se a gestão da atividade MÉDIA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg4e IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg4m IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.nivate_a IS 'Indica a existência de Nível de Atenção AMBULATORIAL, de gestão Municipal/Estadual, para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg3e IS 'Indicador se a gestão do programa cód. 03 é ESTADUAL, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg3m IS 'Indicador se a gestão do programa cód. 03 é MUNICIPAL, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg5e IS 'Indicador se a gestão da atividade MÉDIA COMPLEXIDADE do Nível de Atenção HOSPITALAR é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg5m IS 'Indicador se a gestão da atividade MÉDIA COMPLEXIDADE do Nível de Atenção HOSPITALAR é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg6e IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção HOSPITALAR é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.gesprg6m IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção HOSPITALAR é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.nivate_h IS 'Indica a existência de Nível de Atenção HOSPITALAR, de gestão Municipal/Estadual, para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleitp1 IS 'Quantidade de leitos tipo 1 (cirúrgico) existentes';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleitp2 IS 'Quantidade de leitos tipo 2 (clínico) existentes';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleitp3 IS 'Quantidade de leitos tipo 3 (complem.) existentes';
COMMENT ON COLUMN cnes.tb_cnes_st.leithosp IS 'Indica a existência de LEITOS HOSPITALARES-CIRPURGICOS, CLÍNICOS E COMPLEMENTARES para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst01 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst02 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst03 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst04 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst05 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst06 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst07 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst08 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst09 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst10 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst11 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst12 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst13 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst14 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.urgemerg IS 'Indica a existência de INSTALAÇÃO FÍSICA de URGÊNCIA/EMERGÊNCIA para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst15 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst16 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst17 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst18 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst19 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst20 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst21 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst22 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst23 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst24 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst25 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst26 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst27 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst28 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst29 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst30 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.atendamb IS 'Indica a existência de INSTALAÇÃO FÍSICA de ATENDIMENTO AMBULATORIAL para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst31 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst32 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst33 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.centrcir IS 'Indica a existência de INSTALAÇÃO FÍSICA de ATENDIMENTO HOSPITALAR- CENTRO CIRÚRGICO para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst34 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst35 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst36 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.qtinst37 IS 'Quantidade de salas/consultórios';
COMMENT ON COLUMN cnes.tb_cnes_st.centrobs IS 'Indica a existência de INSTALAÇÃO FÍSICA de ATENDIMENTO HOSPITALAR- CENTRO OBSTÉTRICO para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit05 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit06 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit07 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit08 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit09 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit19 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit20 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit21 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit22 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit23 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit32 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit34 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit38 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit39 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.qtleit40 IS 'Quantidade de leitos/equipos';
COMMENT ON COLUMN cnes.tb_cnes_st.centrneo IS 'Indica a existência de INSTALAÇÃO FÍSICA de ATENDIMENTO HOSPITALAR- UNIDADE NEONATAL para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.atendhos IS 'Indica a existência de INSTALAÇÃO FÍSICA de ATENDIMENTO HOSPITALAR para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap01p IS 'Serviço de apoio S.A.M.E. ou S.P.P. próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap01t IS 'Serviço de apoio S.A.M.E. ou S.P.P.  terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap02p IS 'Serviço de apoio Serviço Social próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap02t IS 'Serviço de apoio Serviço Social terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap03p IS 'Serviço de apoio Farmácia próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap03t IS 'Serviço de apoio Farmácia terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap04p IS 'Serviço de apoio Esterilização de Materiais próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap04t IS 'Serviço de apoio Esterilização de Materiais terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap05p IS 'Serviço de apoio Nutrição/Dietética (S.N.D.) próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap05t IS 'Serviço de apoio Nutrição/Dietética (S.N.D.) terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap06p IS 'Serviço de apoio Lactário próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap06t IS 'Serviço de apoio Lactário terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap07p IS 'Serviço de apoio Banco De Leite próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap07t IS 'Serviço de apoio Banco De Leite terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap08p IS 'Serviço de apoio Lavanderia próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap08t IS 'Serviço de apoio Lavanderia terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap09p IS 'Serviço de apoio Manutenção de Equipamento próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap09t IS 'Serviço de apoio Manutenção de Equipamento terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap10p IS 'Serviço de apoio Ambulância próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap10t IS 'Serviço de apoio Ambulância terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap11p IS 'Serviço de apoio Necrotério próprio, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serap11t IS 'Serviço de apoio Necrotério terceirizado, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.serapoio IS 'Indica a existência de algum serviço de apoio para este CNES, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.res_biol IS 'Existe coleta de resíduo biológico, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.res_quim IS 'Existe coleta de resíduo químico, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.res_radi IS 'Existe coleta de rejeitos radioativos, onde: 1-sim_x000D__x000D_ 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.res_comu IS 'Existe coleta de resíduos comuns, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.coletres IS 'Indica a existência de alguma coleta de resíduo para este CNES, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss01 IS 'Existe comissão de ETICA MEDICA, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss02 IS 'Existe comissão de ETICA DE ENFERMAGEM, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss03 IS 'Existe comissão de FARMÁCIA E TERAPÊUTICA, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss04 IS 'Existe comissão de CONTROLE DE INFECÇÃO HOSPITALAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss05 IS 'Existe comissão de APROPRIAÇÃO DE CUSTOS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss06 IS 'Existe comissão de CIPA, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss07 IS 'Existe comissão de REVISÃO DE PRONTUÁRIOS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss08 IS 'Existe comissão de REVISAO DE DOCUMENTACAO MEDICA E ESTATISTICA,_x000D__x000D_ onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss09 IS 'Existe comissão de ANALISE DE OBITOS E BIOPISIAS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss10 IS 'Existe comissão de INVESTIGACAO EPIDEMIOLOGICA, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss11 IS 'Existe comissão de NOTIFICACAO DE DOENCAS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comiss12 IS 'Existe comissão de CONTROLE DE ZOONOSES E VETORES, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.comissao IS 'Indica a existência de alguma comissão para este CNES, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap01cv01 IS 'Atendimento prestado INTERNAÇÃO/Convenio SUS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap01cv02 IS 'Atendimento prestado INTERNAÇÃO/Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap01cv03 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap01cv04 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap01cv05 IS 'Atendimento prestado INTERNAÇÃO/ Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap01cv06 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap01cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_st.ap02cv01 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio SUS, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap02cv02 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PARTICULAR, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap02cv03 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO- SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap02cv04 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO- SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap02cv05 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap02cv06 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap02cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_st.ap03cv01 IS 'Atendimento prestado SADT/ Convenio SUS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap03cv02 IS 'Atendimento prestado SADT/ Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap03cv03 IS 'Atendimento prestado SADT/ Convenio PLANO-SEGURO PROPRIO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap03cv04 IS 'Atendimento prestado SADT/ Convenio PLANO-SEGURO TERCEIRO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap03cv05 IS 'Atendimento prestado SADT/ Convenio PLANO de SAUDE PUBLICO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap03cv06 IS 'Atendimento prestado SADT/ Convenio PLANO de SAUDE PRIVADO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap03cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_st.ap04cv01 IS 'Atendimento prestado URGENCIA/ Convenio SUS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap04cv02 IS 'Atendimento prestado URGENCIA/ Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap04cv03 IS 'Atendimento prestado URGENCIA/ Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap04cv04 IS 'Atendimento prestado URGENCIA/ Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap04cv05 IS 'Atendimento prestado URGENCIA/ Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap04cv06 IS 'Atendimento prestado URGENCIA/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap04cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_st.ap05cv01 IS 'Atendimento prestado OUTROS/ Convenio SUS,onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap05cv02 IS 'Atendimento prestado OUTROS/Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap05cv03 IS 'Atendimento prestado OUTROS/Convenio PLANO-SEGURO PROPRIO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap05cv04 IS 'Atendimento prestado OUTROS/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap05cv05 IS 'Atendimento prestado OUTROS/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap05cv06 IS 'Atendimento prestado OUTROS/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap05cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_st.ap06cv01 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio SUS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap06cv02 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PARTICULAR, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap06cv03 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap06cv04 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap06cv05 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap06cv06 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap06cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_st.ap07cv01 IS 'Atendimento prestado REGULACAO/Convenio SUS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap07cv02 IS 'Atendimento prestado REGULACAO/Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap07cv03 IS 'Atendimento prestado REGULACAO/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap07cv04 IS 'Atendimento prestado REGULACAO/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap07cv05 IS 'Atendimento prestado REGULACAO/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap07cv06 IS 'Atendimento prestado REGULACAO/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.ap07cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_st.atend_pr IS 'Indica a existência de algum atendimento prestado para este CNES, onde: 1-sim / 0-não';
COMMENT ON COLUMN cnes.tb_cnes_st.dt_atual IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_st.competen IS 'Ano e Mês de competência da informação (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_st.nat_jur IS 'Natureza Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_st.arquivo IS 'Nome do arquivo fonte dos dados.';