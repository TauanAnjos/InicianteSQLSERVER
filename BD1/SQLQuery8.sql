/*
8. Recupere todos os campeonatos onde o "Flamengo" e o "Sport" se 
   enfrentaram. A resposta deve conter o campeonato, a data onde o 
   jogo ocorreu, o nome e a classificação da equipe vencedora.
*/
select camp.dsc_camp, jog.data, t.nom_time
	from campeonatos camp join jogos jog on camp.cod_camp = jog.cod_camp join times t on (t.cod_time = jog.cod_time1 or t.cod_time = jog.cod_time2)
	where t.nom_time in('Flamengo', 'Sport')