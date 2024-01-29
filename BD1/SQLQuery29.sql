/*
29. Encontrar todos os times que participaram de um campeonato nacional no ano de 2002, ou que ganharam
de algum time que participou.
*/
select t.nom_time, camp.ano, camp.tipo
	from times t join participacoes par on t.cod_time = par.cod_time join campeonatos camp on camp.cod_camp = par.cod_camp
	where camp.ano = 2002 and camp.tipo = 'N'