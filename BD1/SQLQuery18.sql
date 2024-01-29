/*
18. Selecionar o nome dos jogadores mais bem pagos em cada estado. O resultado deve ser ordenado por
	estado e salário.
*/
SELECT  t.uf_time,j.nom_jog, j.salario
FROM jogadores j,times t
WHERE EXISTS (
    SELECT 1
    FROM jogadores j1
    JOIN times t1 ON j1.cod_time = t1.cod_time
    WHERE  t1.uf_time = t.uf_time
    GROUP BY t1.uf_time
    HAVING MAX(j1.salario) = j.salario
) and j.cod_time = t.cod_time
ORDER BY t.uf_time,j.nom_jog, j.salario;
