/*
4. Listar todos os patrocinadores do Flamengo do Rio de Janeiro no ano de 2002. No resultado deve estar
presente o nome do patrocinador, seu pa�s de origem, o valor do patroc�nio no ano e uma proje��o do
valor do patroc�nio acrescido de 20%. Esta �ltima coluna deve ser chamada de "Proje��o Futura".
*/
select pat.nom_pat as Nome_Patrocinadores,pat.pais as Pais,pt.valor as Valor_Patrocinio,pt.ano as Ano_Patrocinio, t.nom_time as Nome_time,(pt.valor * 1.20) as Proje�ao_futura
	from patrocinadores pat
	join patrocinios pt on pat.cod_pat = pt.cod_pat join times t on t.cod_time = pt.cod_time
	where ano = 2002
	and t.nom_time = 'Flamengo'
	and t.uf_time = 'RJ'