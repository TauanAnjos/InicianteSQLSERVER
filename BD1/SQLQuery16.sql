/*
16. Listar ordenadamente o nome dos jogadores e o salário daqueles que melhor ganham.
*/
select jog.nom_jog, jog.salario
	from jogadores jog
	where jog.salario = (select max(salario) from jogadores)
	group by jog.nom_jog, jog.salario