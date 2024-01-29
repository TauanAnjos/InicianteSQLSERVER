/*
28. Listar os jogos que fizeram uma equipe atuar com um intervalo menor que 3 dias entre os jogos.
*/
select j.data, t.nom_time
	from jogos j join times t on j.cod_time1 = t.cod_time join jogos j2 on j2.cod_time2 = t.cod_time
	where ABS(DATEDIFF(DAY,j.data,j2.data)) < 3