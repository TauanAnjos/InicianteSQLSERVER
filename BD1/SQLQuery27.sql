/*
27. Listar aos pares, os campeonatos que estavam em andamento simultaneamente. Cada par de campeonatos
deve ser listado apenas uma vez. Assim, se em março de 2000 estavam em andamento os campeonatos
"Camp1", "Camp2" e "Camp3", no resultado deve aparecer as linhas: ( "Camp1", "Camp2" ), ( "Camp1",
"Camp3" ) e ( "Camp2", "Camp3" ).
*/
select camp1.dsc_camp as Campeonato_1,
	   camp2.dsc_camp as Campeonato_2
	from campeonatos camp1 join campeonatos camp2 on camp1.cod_camp = camp2.cod_camp
	where camp1.dat_ini < camp2.dat_fim and camp2.dat_ini < camp1.dat_fim