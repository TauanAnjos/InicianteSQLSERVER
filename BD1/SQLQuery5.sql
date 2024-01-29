/*
7. Listar o nome e o ano do campeonato, o nome do time e a classificação
   dos três primeiros colocados de campeonatos regionais já finalizados.
   Para isso, considere que os campeonatos estão finalizados quando a
   data de término é menor que a data atual e todos os jogos já possuem
   resultados. O resultado deve ser ordenado por nome do campeonato 
   e classificação.
*/
select cam.dsc_camp,cam.tipo, ano, t.nom_time, par.classif, par.pontos
	from campeonatos cam, times t, participacoes par
	where cam.tipo = 'R' and cam.dat_fim < GETDATE()
	order by cam.dsc_camp , par.classif