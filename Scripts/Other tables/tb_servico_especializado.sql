DROP TABLE IF EXISTS public.tb_servicos_especializados CASCADE;
CREATE TABLE public.tb_servicos_especializados(
    codigo_servico_especializado VARCHAR(3),
    servico_especializado VARCHAR(100)
);


COMMENT ON COLUMN public.tb_servicos_especializados.codigo_servico_especializado  IS 'Código numérico do serviço especializado no CNES.';
COMMENT ON COLUMN public.tb_servicos_especializados.servico_especializado  IS 'Nome do serviço especializado.';