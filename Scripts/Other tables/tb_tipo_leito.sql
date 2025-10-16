DROP TABLE IF EXISTS public.tb_tipo_leito CASCADE;
CREATE TABLE public.tb_tipo_leito(
    codigo_tipo_leito INTEGER,
    tipo_leito VARCHAR(50)
);

COMMENT ON COLUMN public.tb_tipo_leito.codigo_tipo_leito IS 'Código numérico do tipo de leito.';
COMMENT ON COLUMN public.tb_tipo_leito.tipo_leito IS 'Descrição do tipo de leito.';
