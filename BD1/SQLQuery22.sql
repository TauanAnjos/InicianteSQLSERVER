/*
22.	Selecionar o nome dos patrocinadores e o total do patrocínio, daqueles que mais investiram no ano de
	2000 em cada estado. A divisão por estado deve ser feita analisando o estado do time onde ocorre o
	investimento.
*/
select  distinct pat.nom_pat, sum(p.valor),t.uf_time
	from patrocinios p 
	join times t on t.cod_time = p.cod_time 
	join patrocinadores pat on pat.cod_pat = p.cod_pat
	where p.ano = 2000  and p.valor in (select max(p1.valor)
					from patrocinios p1 
					join times t1 on t1.cod_time = p1.cod_time 
					join patrocinadores pat1 on pat1.cod_pat = p1.cod_pat
					where p1.ano = p.ano and t1.uf_time = t.uf_time)
	group by pat.nom_pat, t.uf_time