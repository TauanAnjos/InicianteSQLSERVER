/*
9. Listar o nome do jogador e a descrição da posição de todos os jogadores do "Flamengo".
*/
select j.nom_jog, p.dsc_pos, t.nom_time
	from posicoes p join jogadores j on j.cod_pos = p.cod_pos join times t on t.cod_time = j.cod_time
	where t.nom_time = 'Flamengo'
	order by j.nom_jog, p.dsc_pos;