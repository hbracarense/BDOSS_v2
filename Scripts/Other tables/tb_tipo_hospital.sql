CREATE TABLE public.tb_tipo_hospital (
    cod_hospital varchar(1) NOT NULL,
    tipo_hospital varchar(22) NOT NULL
);

INSERT INTO public.tb_tipo_hospital (cod_hospital, tipo_hospital) VALUES
(1, 'Hospital geral'),
(2, 'Hospital especializado');