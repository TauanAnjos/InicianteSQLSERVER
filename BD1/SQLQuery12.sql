/*
12. Listar em ordem alfab�tica o nome de todos os jogadores que j� jogaram pelo "Flamengo".
*/
select j.nom_jog
	from jogadores j
	where cod_time = (select cod_time from times where nom_time = 'Flamengo' )
	order by nom_jog