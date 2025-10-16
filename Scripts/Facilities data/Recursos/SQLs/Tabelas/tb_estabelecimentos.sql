DROP TABLE IF EXISTS public.tb_estabelecimentos CASCADE;
CREATE TABLE public.tb_estabelecimentos (
	codigo_estabelecimento varchar(3) NULL,
	tipo_estabelecimento varchar(100) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN public.tb_estabelecimentos.codigo_estabelecimento IS 'Código numérico do estabelecimento conforme o Cadastro Nacional de Estabelecimentos de Saúde.';
COMMENT ON COLUMN public.tb_estabelecimentos.tipo_estabelecimento IS 'Nome do estabelecimento conforme o Cadastro Nacional de Estabelecimentos de Saúde.';
COMMENT ON COLUMN public.tb_estabelecimentos.arquivo IS 'Nome do arquivo fonte dos dados.';