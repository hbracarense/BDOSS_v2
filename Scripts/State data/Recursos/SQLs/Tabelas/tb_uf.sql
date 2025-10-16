DROP TABLE IF EXISTS public.tb_uf CASCADE;
CREATE TABLE public.tb_uf (
	codigo_uf varchar(2) NULL,
	sigla varchar(200) NULL,
	uf varchar(40) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN public.tb_uf.codigo_uf IS 'Código numérico de dois digítos do IBGE.';
COMMENT ON COLUMN public.tb_uf.sigla IS 'Sigla oficial da UF.';
COMMENT ON COLUMN public.tb_uf.uf IS 'Nome da UF.';
COMMENT ON COLUMN public.tb_uf.arquivo IS 'Nome do arquivo fonte dos dados.';