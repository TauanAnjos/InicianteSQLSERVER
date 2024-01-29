/*
11. Encontrar o nome dos jogadores que já tenham passado por mais de uma equipe diferente no estado do
	Rio de Janeiro.
*/
select j.nom_jog
	from jogadores j join times t on j.cod_time = t.cod_time
	where t.uf_time = 'Rio de Janeiro'
	group by j.nom_jog
	having count(distinct t.cod_time) > 1