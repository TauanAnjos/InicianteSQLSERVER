/*
7. Listar o nome e o ano do campeonato, o nome do time e a classifica��o
   dos tr�s primeiros colocados de campeonatos regionais j� finalizados.
   Para isso, considere que os campeonatos est�o finalizados quando a
   data de t�rmino � menor que a data atual e todos os jogos j� possuem
   resultados. O resultado deve ser ordenado por nome do campeonato 
   e classifica��o.
*/
select cam.dsc_camp,cam.tipo, ano, t.nom_time, par.classif, par.pontos
	from campeonatos cam, times t, participacoes par
	where cam.tipo = 'R' and cam.dat_fim < GETDATE()
	order by cam.dsc_camp , par.classif