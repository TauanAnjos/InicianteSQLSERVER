/*
31. Criar uma visão que a partir do histórico liste todas as transferências de clube realizadas pelo jogador.
Para isso, considere a data de transferência como a data de início do novo contrato do jogador. A visão
deve conter o código do jogador, o código e nome do time de origem, o código e o nome do time de
destino e a data da transferência. Os atributos da visão devem ser respectivamente: cod_jog,
cod_time_ant, nom_time_ant, cod_time_novo, nom_time_novo, dat_tansf. Por exemplo, se o jogador
começou no "Flamengo", foi para o "Santos" e está no "Guarani", a visão deve conter as seguintes linhas:
( 01, 04, 'Flamengo', 05, 'Santos', '05/02/2000' ) e ( 01, 05, 'Santos', 07, 'Guarani', '07/10/2001' ).
*/
select	j.cod_jog 'Código do jogador'
		, t.cod_time 'Cod_time_ant'
		, t.nom_time 'nom_time_ant'
		, t1.cod_time 'cod_time_novo'
		, t1.nom_time 'nom_time_novo'
		, min(h.dat_ini) 'dat_transf'
	from jogadores j join historicos h on j.cod_jog = h.cod_jog
			join times t on j.cod_time = t.cod_time
			join times t1 on t1.cod_time <> j.cod_time
			group by j.cod_jog, t.cod_time, t.nom_time, t1.cod_time, t1.nom_time, h.dat_ini 