/*
13. Selecionar em ordem crescente de ano, o nome das equipes que conseguiram vencer um campeonato
	regional e um estadual no mesmo ano. O Resultado deve conter o ano, o nome da equipe e o estado da
	equipe.
*/
select camp.ano, t.nom_time, t.uf_time
	from campeonatos camp 
		join jogos jog
		on camp.cod_camp = jog.cod_camp 
		join times t 
		on t.cod_time = jog.cod_time1 or t.cod_time = jog.cod_time2
		where camp.ano in (select camp1.ano
								from campeonatos camp1 
									join jogos jog1
										on camp1.cod_camp = jog1.cod_camp 
									join times t1 
										on t1.cod_time = jog1.cod_time1 or t1.cod_time = jog1.cod_time2
										where camp1.ano = camp.ano
										group by camp1.ano
										having count(distinct camp1.tipo)>1)
		group by camp.ano, t.nom_time, t.uf_time
		order by camp.ano