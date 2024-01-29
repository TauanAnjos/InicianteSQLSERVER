/*
17. Listar ordenadamente os jogadores e o salário daqueles mais bem pagos no Rio de Janeiro.
*/
select j.nom_jog, t.uf_time, j.salario
	from jogadores j join times t on j.cod_time = t.cod_time
	where t.uf_time = 'RJ'
	group by j.nom_jog, t.uf_time, j.salario
	order by j.salario desc