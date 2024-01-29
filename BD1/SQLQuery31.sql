/*
31. Criar uma vis�o que a partir do hist�rico liste todas as transfer�ncias de clube realizadas pelo jogador.
Para isso, considere a data de transfer�ncia como a data de in�cio do novo contrato do jogador. A vis�o
deve conter o c�digo do jogador, o c�digo e nome do time de origem, o c�digo e o nome do time de
destino e a data da transfer�ncia. Os atributos da vis�o devem ser respectivamente: cod_jog,
cod_time_ant, nom_time_ant, cod_time_novo, nom_time_novo, dat_tansf. Por exemplo, se o jogador
come�ou no "Flamengo", foi para o "Santos" e est� no "Guarani", a vis�o deve conter as seguintes linhas:
( 01, 04, 'Flamengo', 05, 'Santos', '05/02/2000' ) e ( 01, 05, 'Santos', 07, 'Guarani', '07/10/2001' ).
*/
select	j.cod_jog 'C�digo do jogador'
		, t.cod_time 'Cod_time_ant'
		, t.nom_time 'nom_time_ant'
		, t1.cod_time 'cod_time_novo'
		, t1.nom_time 'nom_time_novo'
		, min(h.dat_ini) 'dat_transf'
	from jogadores j join historicos h on j.cod_jog = h.cod_jog
			join times t on j.cod_time = t.cod_time
			join times t1 on t1.cod_time <> j.cod_time
			group by j.cod_jog, t.cod_time, t.nom_time, t1.cod_time, t1.nom_time, h.dat_ini 