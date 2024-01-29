
/*
20. Selecionar os patrocinadores que investiram em uma mesma equipe em anos diferentes.
*/

select distinct p.nom_pat
	from patrocinadores p, patrocinios pc
	where p.cod_pat = pc.cod_pat and
	exists	(	select pc1.ano
					from patrocinios pc1
					where	pc1.cod_pat = pc.cod_pat and
							pc1.cod_time = pc.cod_time and
							pc1.ano <> pc.ano 
			)
	order by p.nom_pat;

	select p.nom_pat
		from patrocinadores p
		where exists	(	select pc.cod_pat
								from patrocinios pc
								where pc.cod_pat = p.cod_pat
								group by pc.cod_pat, pc.cod_time
								having count(*) > 1 
						)
		order by p.nom_pat;


select distinct p.nom_pat
	from patrocinadores p, patrocinios pc
	where p.cod_pat = pc.cod_pat
	group by p.nom_pat, pc.cod_time
	having count( distinct ano ) > 1;


select distinct p.nom_pat
	from patrocinadores p, patrocinios pc1, patrocinios pc2
	where	p.cod_pat = pc1.cod_pat and
			pc1.cod_pat = pc2.cod_pat and
			pc1.cod_time = pc2.cod_time and
			pc1.ano <> pc2.ano
	order by p.nom_pat;