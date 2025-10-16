
DROP TABLE IF EXISTS public.tb_desativacao CASCADE;
CREATE TABLE public.tb_desativacao (
    codigo_desativacao VARCHAR(10),
    motivo_desativacao TEXT
);

COMMENT ON COLUMN public.tb_desativacao.codigo_desativacao IS 'Código que identifica o motivo de desativação.';
COMMENT ON COLUMN public.tb_desativacao.motivo_desativacao IS 'Descrição do motivo de desativação da equipe.';
