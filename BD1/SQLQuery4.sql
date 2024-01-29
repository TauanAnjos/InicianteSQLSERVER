/*
4. Listar todos os patrocinadores do Flamengo do Rio de Janeiro no ano de 2002. No resultado deve estar
presente o nome do patrocinador, seu país de origem, o valor do patrocínio no ano e uma projeção do
valor do patrocínio acrescido de 20%. Esta última coluna deve ser chamada de "Projeção Futura".
*/
select pat.nom_pat as Nome_Patrocinadores,pat.pais as Pais,pt.valor as Valor_Patrocinio,pt.ano as Ano_Patrocinio, t.nom_time as Nome_time,(pt.valor * 1.20) as Projeçao_futura
	from patrocinadores pat
	join patrocinios pt on pat.cod_pat = pt.cod_pat join times t on t.cod_time = pt.cod_time
	where ano = 2002
	and t.nom_time = 'Flamengo'
	and t.uf_time = 'RJ'