/*
15. Selecionar para cada campeonato, a quantidade de equipes de cada estado. O resultado deve conter o
	nome do campeonato, o estado e o total de equipes, ordenados nome do campeonato e estado.
*/
select camp.dsc_camp as Campeonatos
	  ,t.uf_time as Estado
	  ,count(t.cod_time) as QuantidadeEquipe
from campeonatos camp
	join jogos j on camp.cod_camp = j.cod_camp
	join participacoes par on par.cod_camp = j.cod_camp
	join times t on t.cod_time = par.cod_time
	group by camp.dsc_camp, t.uf_time
	order by camp.dsc_camp, t.uf_time;
