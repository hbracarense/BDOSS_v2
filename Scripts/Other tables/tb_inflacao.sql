DROP TABLE IF EXISTS public.tb_inflacao CASCADE;
CREATE TABLE public.tb_inflacao (
    ano varchar(4),
    mes varchar(2),
    competencia varchar(6),
    numero_indice numeric(12,12),
    indice numeric(12,12)
);
