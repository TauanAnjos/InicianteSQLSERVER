select nom_jog, dat_nasc
	from jogadores
	where DATEDIFF(YEAR, dat_nasc, GETDATE()) < 36
	order by dat_nasc desc, nom_jog;