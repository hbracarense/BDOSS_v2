DROP TABLE IF EXISTS public.tb_forma_contratacao CASCADE;
CREATE TABLE public.tb_forma_contratacao(
    codigo_forma_contratacao VARCHAR(1),
    forma_contratacao VARCHAR(50)
);
INSERT INTO public.tb_forma_contratacao
VALUES
    ('1', 'Contrato de Gestão'),
    ('2', 'Termo de Colaboração'),
    ('3', 'Termo de Fomento'),
    ('4', 'Concessão Administrativa'),
    ('5', 'Convênio'),
    ('6', 'Termo de Parceria'),
    ('7', 'Outros'),
    ('9', 'Sem informações');

COMMENT ON COLUMN public.tb_forma_contratacao.codigo_forma_contratacao  IS 'Código numérico da forma de contratação.';
COMMENT ON COLUMN public.tb_forma_contratacao.forma_contratacao  IS 'Forma de contratação.';