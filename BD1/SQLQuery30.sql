/*
30. Criar uma vis�o que listar o c�digo do time, nome do time, o c�digo do jogador, o nome do jogador e sua
posi��o.
*/
select t.cod_time 'C�digo do time', t.nom_time 'Time', j.cod_jog 'C�digo do jogador', j.nom_jog 'Jogador', p.dsc_pos 'Posi��o'
	from times t join jogadores j on t.cod_time = j.cod_time join posicoes p on p.cod_pos = j.cod_pos