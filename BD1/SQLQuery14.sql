/*
14. Listar ordenadamente por estado, o nome de todas as equipes que nunca participaram de um campeonato
	Regional.
*/
select t.uf_time
	from times t
	where not exists (select t.uf_time
						from participacoes par join campeonatos cam on par.cod_camp = cam.cod_camp
							where t.cod_time = par.cod_time and cam.tipo = 'R')
	order by t.uf_time;
