/*
6. Listar o nome de todos os patrocinadores que possuam a literal 
   “S/A” no nome. O resultado deve ser ordenado pelo próprio nome.
*/
select nom_pat
	from patrocinadores
	where nom_pat like '%S/A%'
	ORDER BY nom_pat;