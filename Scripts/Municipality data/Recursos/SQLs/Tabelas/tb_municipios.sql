DROP TABLE IF EXISTS public.tb_municipios CASCADE;
CREATE TABLE public.tb_municipios (
	codigo_municipio varchar(7) NULL,
	codigo_municipio_saude varchar(6) NULL,
	municipio varchar(200) NULL,
	arquivo varchar(50) NULL
);
COMMENT ON COLUMN public.tb_municipios.codigo_municipio IS 'Código numérico de sete digítos do IBGE.';
COMMENT ON COLUMN public.tb_municipios.codigo_municipio_saude IS 'Código numérico do IBGE, sem o último dígito.';
COMMENT ON COLUMN public.tb_municipios.municipio IS 'Nome do municipio.';
COMMENT ON COLUMN public.tb_municipios.arquivo IS 'Nome do arquivo fonte dos dados.';