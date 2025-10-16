DROP TABLE IF EXISTS public.tb_cbo CASCADE;
CREATE TABLE public.tb_cbo (
	codigo  varchar(6) NULL,
	titulo varchar(200) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN public.tb_cbo.codigo  IS 'Código único da Classificação Brasileira de Ocupações.';
COMMENT ON COLUMN public.tb_cbo.titulo IS 'Nome da ocupação.';
COMMENT ON COLUMN public.tb_cbo.arquivo IS 'Nome do arquivo fonte dos dados.';