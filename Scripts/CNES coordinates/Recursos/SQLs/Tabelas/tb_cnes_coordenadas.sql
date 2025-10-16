DROP TABLE IF EXISTS public.tb_cnes_coordenadas CASCADE;
CREATE TABLE public.tb_cnes_coordenadas (
	cnes varchar(7) NULL,
	nome_estabelecimento varchar(300) NULL,
	lat varchar(20) NULL,
	lon varchar(20) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN public.tb_cnes_coordenadas.cnes IS 'Código único do Cadastro Nacional de Estabelecimentos de Saúde.';
COMMENT ON COLUMN public.tb_cnes_coordenadas.nome_estabelecimento IS 'Nome do estabelecimento de saúde.';
COMMENT ON COLUMN public.tb_cnes_coordenadas.lat IS 'Coordenada geográfica (latitude).';
COMMENT ON COLUMN public.tb_cnes_coordenadas.lon IS 'Coordenada geográfica (longitude).';
COMMENT ON COLUMN public.tb_cnes_coordenadas.arquivo IS 'Nome do arquivo fonte dos dados.';