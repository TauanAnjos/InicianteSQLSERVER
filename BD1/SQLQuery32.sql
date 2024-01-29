/*
32. Criar uma vis�o que liste para cada campeonato, a quantidade de vit�rias, empates, derrotas e jogos n�o
realizados de cada time.
*/
select p.cod_camp, p.cod_time,
	(select count(*)
		from jogos j
		where (j.cod_camp = p.cod_camp) 
		and ((j.cod_time1 = p.cod_time 
		and j.resultado = 1) 
		or (j.cod_time2 = p.cod_time 
		and j.resultado = 2)))  Vit�rias,
	(select count(*)
		from jogos j
		where (j.cod_camp = p.cod_camp) and (p.cod_time in (j.cod_time1,j.cod_time2)) and ( j.resultado = 0)) Empates,
	(select count(*)
		from jogos j
		where (j.cod_camp = p.cod_camp) 
		and ((j.cod_time1 = p.cod_time 
		and j.resultado = 2)
		or (j.cod_time2 = p.cod_time
		and j.resultado = 1))) Derrotas,
	(select count(*)
		from jogos j
		where (j.cod_camp = p.cod_camp and (p.cod_time in(j.cod_time1,j.cod_time2) and (j.resultado is null)))) Naorealizados
	from participacoes p;