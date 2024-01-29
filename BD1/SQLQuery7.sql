/*
5. Listar o nome de todos os jogadores que tenham seus nomes 
   começados com ‘A’ ou terminados com ‘O’.
*/
select nom_jog
	from jogadores
	where nom_jog like'A%' or nom_jog like '%o';