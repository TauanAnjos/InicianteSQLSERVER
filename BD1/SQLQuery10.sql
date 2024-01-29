/*
10. Listar o nome do time e o total de jogadores de cada equipe. 
(Fazer a mesma questão de quatro maneiras diferentes!).
*/
select t.nom_time, count(j.cod_jog)
	from times t join jogadores j on t.cod_time = j.cod_time
	group by t.nom_time