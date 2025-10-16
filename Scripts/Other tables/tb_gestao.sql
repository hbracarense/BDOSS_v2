DROP TABLE IF EXISTS public.tb_gestao CASCADE;
CREATE TABLE public.tb_gestao(
    codigo_gestao VARCHAR(1),
    tipo_gestao VARCHAR(10)
);
INSERT INTO public.tb_gestao
VALUES
    ('1', 'Municipal'),
    ('2', 'Estadual'),
    ('3', 'Dupla'),
    ('9', 'Sem informações');

COMMENT ON COLUMN public.tb_gestao.codigo_gestao  IS 'Código numérico do tipo de gestão.';
COMMENT ON COLUMN public.tb_gestao.tipo_gestao  IS 'Tipo de gestão.';