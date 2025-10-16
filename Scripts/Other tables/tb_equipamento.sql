DROP TABLE IF EXISTS public.tb_equipamento CASCADE;
CREATE TABLE public.tb_equipamento(
    codigo_equipamento VARCHAR(2),
    equipamento VARCHAR(200)
);

COMMENT ON COLUMN public.tb_equipamento.codigo_equipamento  IS 'Código numérico do equipamento.';
COMMENT ON COLUMN public.tb_equipamento.equipamento  IS 'Equipamento.';