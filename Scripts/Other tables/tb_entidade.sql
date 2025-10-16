DROP TABLE IF EXISTS public.tb_entidade CASCADE;
CREATE TABLE public.tb_entidade(
    codigo_entidade VARCHAR(1),
    tipo_entidade VARCHAR(50)
);
INSERT INTO public.tb_entidade
VALUES
    ('1', 'Organização Social (OS)'),
    ('2', 'Organização da Sociedade Civil de Interesse Público (OSCIP)'),
    ('3', 'Organização da Sociedade Civil (OSC)'),
    ('4', 'Fundação Privada não-OS, OSC ou OSCIP'),
    ('5', 'Associação Privada'),
    ('6', 'Associação não-OS, OSC ou OSCIP'),
    ('7', 'Serviço Social Autônomo'),
    ('8', 'Sociedade Empresarial'),
    ('9', 'Sem informações');

COMMENT ON COLUMN public.tb_entidade.codigo_entidade  IS 'Código numérico do tipo de entidade.';
COMMENT ON COLUMN public.tb_entidade.tipo_entidade  IS 'Tipo de entidade.';