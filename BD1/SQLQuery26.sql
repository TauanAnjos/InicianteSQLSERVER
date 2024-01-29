/*
26. Listar em cada time, o nome dos jogadores que atuaram por mais equipes diferentes. O resultado deve
conter o nome do jogador e o time que ele atua, ordenados por nome do time.
*/
select t.nom_time, jog.nom_jog, count(distinct jog.cod_time) as 'Número de equipes'
	from jogadores jog join times t on jog.cod_time = t.cod_time join historicos h on h.cod_jog = jog.cod_jog
	group by t.nom_time, jog.nom_jog
	order by t.nom_time