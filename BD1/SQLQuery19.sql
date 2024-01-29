/*
19. Selecionar os campeonatos sem times inscritos, ou seja, sem participantes.
*/
select camp.dsc_camp, t.nom_time
	from campeonatos camp left join participacoes par on camp.cod_camp = par.cod_camp  join times t on t.cod_time = par.cod_time
	group by camp.dsc_camp, t.nom_time