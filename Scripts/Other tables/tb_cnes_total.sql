CREATE TABLE IF NOT EXISTS public.tb_cnes_total (
    municipio  INTEGER    NOT NULL,          -- código IBGE do município (7 dígitos)
    ubs       INTEGER    NOT NULL DEFAULT 0,
    upa       INTEGER    NOT NULL DEFAULT 0,
    caps      INTEGER    NOT NULL DEFAULT 0,
    hospital  INTEGER    NOT NULL DEFAULT 0,
    outros    INTEGER    NOT NULL DEFAULT 0
);

-- Opcional: comentários
COMMENT ON TABLE  public.tb_cnes_total IS 'Totais de CNES distintos por município e tipo de unidade';
COMMENT ON COLUMN public.tb_cnes_total.municipio  IS 'Código IBGE (6 dígitos) do município';
COMMENT ON COLUMN public.tb_cnes_total.ubs       IS 'Qtde de CNES distintos classificados como UBS';
COMMENT ON COLUMN public.tb_cnes_total.upa       IS 'Qtde de CNES distintos classificados como UPA';
COMMENT ON COLUMN public.tb_cnes_total.caps      IS 'Qtde de CNES distintos classificados como CAPS';
COMMENT ON COLUMN public.tb_cnes_total.hospital  IS 'Qtde de CNES distintos classificados como Hospital';
COMMENT ON COLUMN public.tb_cnes_total.outros    IS 'Qtde de CNES distintos classificados como Outros';