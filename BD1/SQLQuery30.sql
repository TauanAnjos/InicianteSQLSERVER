/*
30. Criar uma visão que listar o código do time, nome do time, o código do jogador, o nome do jogador e sua
posição.
*/
select t.cod_time 'Código do time', t.nom_time 'Time', j.cod_jog 'Código do jogador', j.nom_jog 'Jogador', p.dsc_pos 'Posição'
	from times t join jogadores j on t.cod_time = j.cod_time join posicoes p on p.cod_pos = j.cod_pos