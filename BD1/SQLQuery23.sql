/*
23. Selecionar o nome e a quantidade de jogos dos campeonatos com maior número de jogos.
*/
select top 2 camp.dsc_camp, count(*) as Quantidade_jogos
	from campeonatos camp
		join jogos jog
		on	camp.cod_camp = jog.cod_camp
		group by camp.dsc_camp
		order by Quantidade_jogos  desc
		