/*
25. Encontrar os goleiros que atuaram por mais times diferentes.
*/
select jo.nom_jog, po.dsc_pos, count(distinct jo.cod_time) as Números_de_times
	 from posicoes po  join jogadores jo on po.cod_pos = jo.cod_pos
	 where po.dsc_pos = 'Goleiro'
	 group by jo.nom_jog, po.dsc_pos