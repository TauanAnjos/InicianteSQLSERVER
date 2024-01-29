/*
21. Selecionar o nome dos patrocinadores e o total do patrocínio no ano 2001, daqueles que investiram em algum time do Rio de Janeiro neste ano.
*/
select pat.nom_pat, pa.ano ,sum(pa.valor), t.uf_time
	from patrocinadores pat 
	join patrocinios pa on pat.cod_pat = pa.cod_pat 
	join times t on pa.cod_time = t.cod_time
	group by pat.nom_pat,pa.ano, pa.valor, t.uf_time
	having pa.ano = 2001 and t.uf_time = 'RJ'
	order by pat.nom_pat