DROP TABLE IF EXISTS cnes.tb_cnes_ep CASCADE;
CREATE TABLE cnes.tb_cnes_ep (
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
	terceiro varchar(50) NULL,
	tp_prest varchar(50) NULL,
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
	ap01cv01 varchar(50) NULL,
	ap01cv02 varchar(50) NULL,
	ap01cv05 varchar(50) NULL,
	ap01cv06 varchar(50) NULL,
	ap01cv03 varchar(50) NULL,
	ap01cv04 varchar(50) NULL,
	ap01cv07 varchar(50) NULL,
	ap02cv01 varchar(50) NULL,
	ap02cv02 varchar(50) NULL,
	ap02cv05 varchar(50) NULL,
	ap02cv06 varchar(50) NULL,
	ap02cv03 varchar(50) NULL,
	ap02cv04 varchar(50) NULL,
	ap02cv07 varchar(50) NULL,
	ap03cv01 varchar(50) NULL,
	ap03cv02 varchar(50) NULL,
	ap03cv05 varchar(50) NULL,
	ap03cv06 varchar(50) NULL,
	ap03cv03 varchar(50) NULL,
	ap03cv04 varchar(50) NULL,
	ap03cv07 varchar(50) NULL,
	ap04cv01 varchar(50) NULL,
	ap04cv02 varchar(50) NULL,
	ap04cv05 varchar(50) NULL,
	ap04cv06 varchar(50) NULL,
	ap04cv03 varchar(50) NULL,
	ap04cv04 varchar(50) NULL,
	ap04cv07 varchar(50) NULL,
	ap05cv01 varchar(50) NULL,
	ap05cv02 varchar(50) NULL,
	ap05cv05 varchar(50) NULL,
	ap05cv06 varchar(50) NULL,
	ap05cv03 varchar(50) NULL,
	ap05cv04 varchar(50) NULL,
	ap05cv07 varchar(50) NULL,
	ap06cv01 varchar(50) NULL,
	ap06cv02 varchar(50) NULL,
	ap06cv05 varchar(50) NULL,
	ap06cv06 varchar(50) NULL,
	ap06cv03 varchar(50) NULL,
	ap06cv04 varchar(50) NULL,
	ap06cv07 varchar(50) NULL,
	ap07cv01 varchar(50) NULL,
	ap07cv02 varchar(50) NULL,
	ap07cv05 varchar(50) NULL,
	ap07cv06 varchar(50) NULL,
	ap07cv03 varchar(50) NULL,
	ap07cv04 varchar(50) NULL,
	ap07cv07 varchar(50) NULL,
	atend_pr varchar(50) NULL,
	idequipe varchar(50) NULL,
	tipo_eqp varchar(50) NULL,
	nome_eqp varchar(60) NULL,
	id_area varchar(50) NULL,
	nomearea varchar(60) NULL,
	id_segm varchar(50) NULL,
	descsegm varchar(60) NULL,
	tiposegm varchar(50) NULL,
	dt_ativa varchar(50) NULL,
	dt_desat varchar(50) NULL,
	quilombo varchar(50) NULL,
	assentad varchar(50) NULL,
	popgeral varchar(50) NULL,
	escola varchar(50) NULL,
	indigena varchar(50) NULL,
	pronasci varchar(50) NULL,
	motdesat varchar(50) NULL,
	tp_desat varchar(50) NULL,
	competen varchar(50) NULL,
	nat_jur varchar(50) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN cnes.tb_cnes_ep.cnes IS 'Número nacional do estabelecimento de saúde';
COMMENT ON COLUMN cnes.tb_cnes_ep.codufmun IS 'Código do município do estabelecimento: UF + MUNIC (sem dígito)';
COMMENT ON COLUMN cnes.tb_cnes_ep.cod_cep IS 'Código do CEP do estabelecimento';
COMMENT ON COLUMN cnes.tb_cnes_ep.cpf_cnpj IS 'CPF do estabelecimento, caso pessoa física ou CNPJ, caso pessoa jurídica';
COMMENT ON COLUMN cnes.tb_cnes_ep.pf_pj IS 'Indicador de pessoa: 1-Física 3-Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_ep.niv_dep IS 'Grau de dependência, onde: 1-Individual 3-Mantida';
COMMENT ON COLUMN cnes.tb_cnes_ep.cnpj_man IS 'CNPJ da mantenedora do estabelecimento.';
COMMENT ON COLUMN cnes.tb_cnes_ep.cod_ir IS 'Indica o tipo de retenção de tributos da mantenedora';
COMMENT ON COLUMN cnes.tb_cnes_ep.regsaude IS 'Código da região de saúde NOAS';
COMMENT ON COLUMN cnes.tb_cnes_ep.micr_reg IS 'Código da micro-região de saúde NOAS';
COMMENT ON COLUMN cnes.tb_cnes_ep.distrsan IS 'Código do distrito sanitário';
COMMENT ON COLUMN cnes.tb_cnes_ep.distradm IS 'Inicialmente chamado Distrito Administrativo, atualmente Código do Módulo Assistencial conforme tabela local, em conformidade com o Plano Diretor de Regionalização do Estado/Município.';
COMMENT ON COLUMN cnes.tb_cnes_ep.vinc_sus IS 'Vínculo com SUS: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_ep.tpgestao IS 'Gestão de saúde';
COMMENT ON COLUMN cnes.tb_cnes_ep.esfera_a IS 'Código da esfera administrativa';
COMMENT ON COLUMN cnes.tb_cnes_ep.retencao IS 'Código de retenção de tributos';
COMMENT ON COLUMN cnes.tb_cnes_ep.atividad IS 'Código da atividade de ensino/pesquisa';
COMMENT ON COLUMN cnes.tb_cnes_ep.natureza IS 'Código da natureza da organização';
COMMENT ON COLUMN cnes.tb_cnes_ep.clientel IS 'Código de FLUXO da clientela';
COMMENT ON COLUMN cnes.tb_cnes_ep.tp_unid IS 'Tipo de unidade (estabelecimento)';
COMMENT ON COLUMN cnes.tb_cnes_ep.turno_at IS 'Código de turno de atendimento';
COMMENT ON COLUMN cnes.tb_cnes_ep.niv_hier IS 'Código do nível de hierarquia';
COMMENT ON COLUMN cnes.tb_cnes_ep.terceiro IS 'O estabelecimento é terceiro: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_ep.tp_prest IS 'Tipo de Prestador';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg1e IS 'Indicador se a gestão da atividade ATENÇÃO BÁSICA do Nível de Atenção AMBULATORIAL é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg1m IS 'Indicador se a gestão da atividade ATENÇÃO BÁSICA do Nível de Atenção AMBULATORIAL é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg2e IS 'Indicador se a gestão da atividade MÉDIA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg2m IS 'Indicador se a gestão da atividade MÉDIA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg4e IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg4m IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção AMBULATORIAL é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.nivate_a IS 'Indica a existência de Nível de Atenção AMBULATORIAL, de gestão Municipal/Estadual, para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg3e IS 'Indicador se a gestão do programa é ESTADUAL, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg3m IS 'Indicador se a gestão do programa é MUNICIPAL, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg5e IS 'Indicador se a gestão da atividade MÉDIA COMPLEXIDADE do Nível de Atenção HOSPITALAR é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg5m IS 'Indicador se a gestão da atividade MÉDIA COMPLEXIDADE do Nível de Atenção HOSPITALAR é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg6e IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção HOSPITALAR é ESTADUAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.gesprg6m IS 'Indicador se a gestão da atividade ALTA COMPLEXIDADE do Nível de Atenção HOSPITALAR é MUNICIPAL, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.nivate_h IS 'Indica a existência de Nível de Atenção HOSPITALAR, de gestão Municipal/Estadual, para este CNES, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap01cv01 IS 'Atendimento prestado INTERNAÇÃO/ Convenio SUS, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap01cv02 IS 'Atendimento prestado INTERNAÇÃO/Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap01cv05 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap01cv06 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap01cv03 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap01cv04 IS 'Atendimento prestado INTERNAÇÃO/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap01cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap02cv01 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio SUS, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap02cv02 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PARTICULAR, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap02cv05 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap02cv06 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap02cv03 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO- SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap02cv04 IS 'Atendimento prestado ATENDIMENTO AMBULATORIAL/Convenio PLANO- SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap02cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap03cv01 IS 'Atendimento prestado SADT/Convenio SUS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap03cv02 IS 'Atendimento prestado SADT/Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap03cv05 IS 'Atendimento prestado SADT/Convenio PLANO de SAUDE PUBLICO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap03cv06 IS 'Atendimento prestado SADT/Convenio PLANO de SAUDE PRIVADO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap03cv03 IS 'Atendimento prestado SADT/Convenio PLANO-SEGURO PROPRIO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap03cv04 IS 'Atendimento prestado SADT/Convenio PLANO-SEGURO TERCEIRO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap03cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap04cv01 IS 'Atendimento prestado URGENCIA/Convenio SUS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap04cv02 IS 'Atendimento prestado URGENCIA/Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap04cv05 IS 'Atendimento prestado URGENCIA/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap04cv06 IS 'Atendimento prestado URGENCIA/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap04cv03 IS 'Atendimento prestado URGENCIA/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap04cv04 IS 'Atendimento prestado URGENCIA/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap04cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap05cv01 IS 'Atendimento prestado OUTROS/Convenio SUS,onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap05cv02 IS 'Atendimento prestado OUTROS/Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap05cv05 IS 'Atendimento prestado OUTROS/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap05cv06 IS 'Atendimento prestado OUTROS/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap05cv03 IS 'Atendimento prestado OUTROS/Convenio PLANO-SEGURO PROPRIO, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap05cv04 IS 'Atendimento prestado OUTROS/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap05cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap06cv01 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio SUS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap06cv02 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PARTICULAR, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap06cv05 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap06cv06 IS 'Atendimento prestado VIGILANCIA EM SAUDE/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap06cv03 IS 'Atendimento prestado VIGILANCIA EM SAUDE/ Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap06cv04 IS 'Atendimento prestado VIGILANCIA EM SAUDE/ Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap06cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap07cv01 IS 'Atendimento prestado REGULACAO/Convenio SUS, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap07cv02 IS 'Atendimento prestado REGULACAO/Convenio PARTICULAR, onde: 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap07cv05 IS 'Atendimento prestado REGULACAO/Convenio PLANO de SAUDE PUBLICO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap07cv06 IS 'Atendimento prestado REGULACAO/Convenio PLANO de SAUDE PRIVADO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap07cv03 IS 'Atendimento prestado REGULACAO/Convenio PLANO-SEGURO PROPRIO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap07cv04 IS 'Atendimento prestado REGULACAO/Convenio PLANO-SEGURO TERCEIRO, onde:_x000D__x000D_ 1-sim 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.ap07cv07 IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_ep.atend_pr IS 'Indica a existência de algum atendimento prestado para este CNES, onde: 1-sim / 0-não';
COMMENT ON COLUMN cnes.tb_cnes_ep.idequipe IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_ep.tipo_eqp IS 'Tipo de Equipe';
COMMENT ON COLUMN cnes.tb_cnes_ep.nome_eqp IS 'Nome da Equipe';
COMMENT ON COLUMN cnes.tb_cnes_ep.id_area IS 'Sem descrição.';
COMMENT ON COLUMN cnes.tb_cnes_ep.nomearea IS 'Nome da Área';
COMMENT ON COLUMN cnes.tb_cnes_ep.id_segm IS 'Código do Segmento';
COMMENT ON COLUMN cnes.tb_cnes_ep.descsegm IS 'Descrição do Segmento';
COMMENT ON COLUMN cnes.tb_cnes_ep.tiposegm IS 'Tipo do Segmento: 1–Urbano 2–Rural';
COMMENT ON COLUMN cnes.tb_cnes_ep.dt_ativa IS 'Ano e Mês da Data de ATIVAÇÃO da Equipe';
COMMENT ON COLUMN cnes.tb_cnes_ep.dt_desat IS 'Ano e Mês da Data de DESATIVAÇÃO da Equipe';
COMMENT ON COLUMN cnes.tb_cnes_ep.quilombo IS 'Atende População Assistida Quilombolas: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_ep.assentad IS 'Atende População Assistida Assentados: 1– Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_ep.popgeral IS 'Atende População Assistida Geral: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_ep.escola IS 'Atende População Assistida Escolares: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_ep.indigena IS 'Atende População Assistida PRONASCI: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_ep.pronasci IS 'Atende População Assistida Geral: 1-Sim 0-Não';
COMMENT ON COLUMN cnes.tb_cnes_ep.motdesat IS 'Código do Motivo de Desativação da Equipe';
COMMENT ON COLUMN cnes.tb_cnes_ep.tp_desat IS 'Código do Tipo de Desativação da Equipe 1 – Temporário 2 - Definitivo';
COMMENT ON COLUMN cnes.tb_cnes_ep.competen IS 'Ano e Mês de competência da informação (AAAAMM)';
COMMENT ON COLUMN cnes.tb_cnes_ep.nat_jur IS 'Natureza Jurídica';
COMMENT ON COLUMN cnes.tb_cnes_ep.arquivo IS 'Nome do arquivo fonte dos dados.';