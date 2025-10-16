DROP TABLE IF EXISTS public.tb_forma_contratacao_profissionais CASCADE;
CREATE TABLE public.tb_forma_contratacao_profissionais(
    codigo_forma_contratacao_profissionais VARCHAR(6),
    forma_contratacao_profissionais VARCHAR(200)
);

COMMENT ON COLUMN public.tb_forma_contratacao_profissionais.codigo_forma_contratacao_profissionais  IS 'Código numérico da forma de contratação dos profissionais.';
COMMENT ON COLUMN public.tb_forma_contratacao_profissionais.forma_contratacao_profissionais  IS 'Forma de contratação dos profissionais.';