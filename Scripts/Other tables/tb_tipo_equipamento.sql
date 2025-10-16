DROP TABLE IF EXISTS public.tb_tipo_equipamento CASCADE;
CREATE TABLE public.tb_tipo_equipamento(
    codigo_tipo_equipamento VARCHAR(1),
    tipo_equipamento VARCHAR(100)
);

COMMENT ON COLUMN public.tb_tipo_equipamento.codigo_tipo_equipamento  IS 'Código numérico do tipo do equipamento.';
COMMENT ON COLUMN public.tb_tipo_equipamento.tipo_equipamento  IS 'Tipo do equipamento.';