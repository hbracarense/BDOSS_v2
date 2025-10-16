
DROP TABLE IF EXISTS public.tb_equipes CASCADE;
CREATE TABLE public.tb_equipes (
    codigo_equipe VARCHAR(10),
    sigla_equipe VARCHAR(50),
    nome_equipe TEXT
);

COMMENT ON COLUMN public.tb_equipes.codigo_equipe IS 'Código identificador da equipe.';
COMMENT ON COLUMN public.tb_equipes.sigla_equipe IS 'Sigla da equipe.';
COMMENT ON COLUMN public.tb_equipes.nome_equipe IS 'Nome completo e descritivo da equipe.';
