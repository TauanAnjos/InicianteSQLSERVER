/*
24. Selecionar o nome e a quantidade de jogos dos campeonatos com maior número de jogos em cada ano.
*/
select  camp.dsc_camp, camp.ano, count(jog.cod_camp) as Quantidade_jogos
	from campeonatos camp  join jogos jog on camp.cod_camp = jog.cod_camp
	group by camp.dsc_camp, camp.ano
	order by Quantidade_jogos desc